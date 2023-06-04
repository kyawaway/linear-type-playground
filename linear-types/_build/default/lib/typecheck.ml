(** Typecheck  **)

open Ast

exception TypeError
exception ContextError
exception QualError
exception ContainError
exception UnUsedError of string

let get_qualifier t =
  match t with TyBool q -> q | TyPair (q, _, _) -> q | TyFunc (q, _, _) -> q

(* containment ruleとは，unで修飾された型の中にlinで修飾された型が現れてはならないという規則． *)

(** termがcontainment ruleを満たしているかを確かめる(満たしていたらtrue) *)
let rec check_qual_contain_rule qual ty =
  let check_qual_contain_rule' qual qual' = not (qual = Un && qual' = Lin) in
  match ty with
  | TyBool qual' -> check_qual_contain_rule' qual qual'
  | TyPair (qual', ty1, ty2) ->
      check_qual_contain_rule qual' ty1
      && check_qual_contain_rule qual' ty2
      && check_qual_contain_rule' qual qual'
  | TyFunc (qual', ty1, ty2) ->
      check_qual_contain_rule qual' ty1
      && check_qual_contain_rule qual' ty2
      && check_qual_contain_rule' qual qual'

let check_qual_contain_context q con =
  List.for_all (function _, t -> check_qual_contain_rule q t) con

(* check_equal : pretype -> pretype -> ()  *)
let check_equal t1 t2 = if t1 = t2 then () else raise TypeError

let check_equal' t1 t2 =
  let replace_un_qualifier = function
    | TyBool _ -> TyBool Un
    | TyPair (_, t1', t2') -> TyPair (Un, t1', t2')
    | TyFunc (_, t1', t2') -> TyFunc (Un, t1', t2')
  in
  check_equal (replace_un_qualifier t1) (replace_un_qualifier t2)

(* (?) *)
let check_equal_const t1 t2 =
  let erase_type = function
    | TyBool _ -> TyBool Un
    | TyPair (_, _, _) -> TyPair (Un, TyBool Un, TyBool Un)
    | TyFunc (_, _, _) -> TyFunc (Un, TyBool Un, TyBool Un)
  in
  check_equal (erase_type t1) (erase_type t2)

let check_equal_context ctx1 ctx2 : unit =
  if List.length ctx1 <> List.length ctx2 then raise ContextError
  else
    (* c2の要素がc1内に存在するかを1つづつ確認していっている．1個でもfalseがあったら&&で繋がっているからfalseになる *)
    let exists_context c1 c2 =
      List.fold_left
        (fun x (n, _) -> List.exists (fun (y, _) -> n == y) c1 && x)
        true c2
    in
    if exists_context ctx1 ctx2 && exists_context ctx2 ctx1 then ()
    else raise ContextError

(* Typing *)

(** 変数名の被りを弾く *)
let context_check name ty ctx =
  if List.mem_assoc name ctx then raise ContextError else (name, ty) :: ctx

(** 項の型を文脈から判断する． *)
let rec type_check term ctx =
  match term with
  | TmVar name -> t_var name ctx
  | TmBoolean (qual, _) -> (TyBool qual, ctx)
  | TmIf (term1, term2, term3) -> t_if term1 term2 term3 ctx
  | TmPair (qual, term1, term2) -> t_pair qual term1 term2 ctx
  | TmSplit (term1, x, y, term_body) -> t_split term1 x y term_body ctx
  | TmApp (term1, term2) -> t_app term1 term2 ctx
  | TmAbs (qual, name, vtype, term_body) -> t_abs qual name vtype term_body ctx

(* Typing Rules *)
and t_var name ctx =
  let var_type =
    try List.assoc name ctx
    with Not_found ->
      print_string ("Variable " ^ name ^ " is already used or not defined\n");
      exit 0
  in
  let qual = get_qualifier var_type in
  match qual with
  | Un -> (var_type, ctx)
  (* gamma_1, x:un P, gamma_2 |- x: un P;gamma_1, x:un P, gamma_2 *)
  (* x:un P -> context の中からxに対応する型，そのままの文脈を返すだけ．  *)
  | Lin -> (var_type, List.remove_assoc name ctx)

(* gamma_1, x:lin P, gamma_2 |- x:lin P;gamma_1, gamma_2*)
(* x:lin P -> contextの中から，xに対応する型と，文脈からxに対応する型を消したものを返す．(xは1度しか型付けされない) *)

(* (1)gamma_1 |- if c then t1 else t2:T; gamma_3 -> (2)gamma_2 |- t1:T;gamma_3, (3)gamma_2 |- t2:T;gamma_3 *)
and t_if term_cond term1 term2 ctx =
  (* term_cond:cond_t;context2  *)
  let cond_t, ctx2 = type_check term_cond ctx in
  (* (2)term1:term1_t;context3 *)
  let term1_t, ctx3 = type_check term1 ctx2 in
  (* (3)term2:term2_t;context3' *)
  let term2_t, ctx3' = type_check term2 ctx2 in
  (* gamma_1 |- t1: q Bool (なぜUnにしている？) *)
  check_equal' cond_t (TyBool Un);
  (* t1:T, t2:T *)
  check_equal term1_t term2_t;
  (* t1:T;gamma_3, t2:T;gamma_3 *)
  check_equal_context ctx3 ctx3';
  (* (1) *)
  (term1_t, ctx3)

(* (1)gamma_1 |- q<t1, t2>:q(T1*T2);gamma_3 -> (2)gamma_1 |- t1:T1;gamma_2 q(T1), (3)gamma_2 |- t2:T2;gamma_3 q(T2)*)
and t_pair qual term1 term2 ctx =
  (* (2) *)
  let term1_t, ctx2 = type_check term1 ctx in
  (* (3) *)
  let term2_t, ctx3 = type_check term2 ctx2 in
  if
    not
      (check_qual_contain_rule qual term1_t
      && check_qual_contain_rule qual term2_t)
  then raise QualError
    (* t1とt2は同じqual *)
    (* (1) *)
  else (TyPair (qual, term1_t, term2_t), ctx3)

(**)
and t_split term1 x y term_body ctx =
  let term1_t, ctx2 = type_check term1 ctx in
  check_equal_const term1_t (TyPair (Un, TyBool Un, TyBool Un));
  let (TyPair (_, x_t, y_t)) = term1_t in
  let term_body_t, ctx3 = type_check term_body ((x, x_t) :: (y, y_t) :: ctx2) in
  if get_qualifier x_t = Lin && List.mem_assoc x ctx3 then raise (UnUsedError x)
    (* Linがついてるやつは捨ててはならない *)
  else if get_qualifier y_t = Lin && List.mem_assoc y ctx3 then
    raise (UnUsedError y)
  else ();
  (term_body_t, List.remove_assoc y (List.remove_assoc x ctx3))

(* (1)gamma_1 o gamma_2 |- t1 t2 : T12 --> (2)gamma_1 |- t1:q T11->T12 (3)gamma_2 |- t2:T11 *)
and t_app term1 term2 ctx =
  (* (2) *)
  let term1_t, ctx2 = type_check term1 ctx in
  check_equal_const term1_t (TyFunc (Un, TyBool Un, TyBool Un));
  (* (3) *)
  let term2_t, ctx3 = type_check term2 ctx2 in
  let (TyFunc (_, t11, t12)) = term1_t in
  (* t2:T11であることを確認して， *)
  check_equal t11 term2_t;
  (* (T11->T12) (T11) -> T12 を返す *)
  (t12, ctx3)

(* (1)gamam |- q lambda x:T1 . t2 : q T1 -> T2 --> q(gamma)  (2)gamma,x:T1 |- t2:T2 *)
and t_abs qual name vtype term_body ctx =
  if check_qual_contain_rule (get_qualifier vtype) vtype then ()
  else raise ContainError;
  (* (2) *)
  let term_body_t, ctx2 = type_check term_body ((name, vtype) :: ctx) in
  if check_qual_contain_rule qual term_body_t then () else raise ContainError;
  (* Linがついてたら，bodyで使われたかチェック *)
  if get_qualifier vtype = Lin && List.mem_assoc name ctx2 then
    raise (UnUsedError name)
  else ();
  if qual = Un then
    (* Unの場合，束縛変数が文脈から消えていることを確認(スコープ) *)
    check_equal_context ctx (List.remove_assoc name ctx2)
  else ();
  (* (1) *)
  (TyFunc (qual, vtype, term_body_t), List.remove_assoc name ctx2)
