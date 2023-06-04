
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | TYBOOL
    | THEN
    | SPLIT
    | SEMI
    | RPAREN
    | RIGHT
    | QUAL of (
# 2 "lib/parser.mly"
       (Ast.qualifier)
# 21 "lib/parser.ml"
  )
    | MULTI
    | LPAREN
    | LET
    | LEFT
    | LAMBDA
    | IN
    | IF
    | ID of (
# 1 "lib/parser.mly"
       (string)
# 33 "lib/parser.ml"
  )
    | EQ
    | EOF
    | ELSE
    | DOT
    | COMMA
    | COLON
    | BOOL of (
# 3 "lib/parser.mly"
       (bool)
# 44 "lib/parser.ml"
  )
    | AS
    | ARROW
  
end

include MenhirBasics

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_toplevel) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: toplevel. *)

  | MenhirState04 : (('s, _menhir_box_toplevel) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_toplevel) _menhir_state
    (** State 04.
        Stack shape : LET ID.
        Start symbol: toplevel. *)

  | MenhirState05 : (('s, _menhir_box_toplevel) _menhir_cell1_SPLIT, _menhir_box_toplevel) _menhir_state
    (** State 05.
        Stack shape : SPLIT.
        Start symbol: toplevel. *)

  | MenhirState07 : (('s, _menhir_box_toplevel) _menhir_cell1_QUAL, _menhir_box_toplevel) _menhir_state
    (** State 07.
        Stack shape : QUAL.
        Start symbol: toplevel. *)

  | MenhirState08 : (('s, _menhir_box_toplevel) _menhir_cell1_LPAREN, _menhir_box_toplevel) _menhir_state
    (** State 08.
        Stack shape : LPAREN.
        Start symbol: toplevel. *)

  | MenhirState09 : (('s, _menhir_box_toplevel) _menhir_cell1_IF, _menhir_box_toplevel) _menhir_state
    (** State 09.
        Stack shape : IF.
        Start symbol: toplevel. *)

  | MenhirState12 : ((('s, _menhir_box_toplevel) _menhir_cell1_IF, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_state
    (** State 12.
        Stack shape : IF term.
        Start symbol: toplevel. *)

  | MenhirState13 : (((('s, _menhir_box_toplevel) _menhir_cell1_IF, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_THEN, _menhir_box_toplevel) _menhir_state
    (** State 13.
        Stack shape : IF term THEN.
        Start symbol: toplevel. *)

  | MenhirState14 : ((((('s, _menhir_box_toplevel) _menhir_cell1_IF, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_THEN, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_state
    (** State 14.
        Stack shape : IF term THEN term.
        Start symbol: toplevel. *)

  | MenhirState15 : (((((('s, _menhir_box_toplevel) _menhir_cell1_IF, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_THEN, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_ELSE, _menhir_box_toplevel) _menhir_state
    (** State 15.
        Stack shape : IF term THEN term ELSE.
        Start symbol: toplevel. *)

  | MenhirState16 : ((((((('s, _menhir_box_toplevel) _menhir_cell1_IF, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_THEN, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_ELSE, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_state
    (** State 16.
        Stack shape : IF term THEN term ELSE term.
        Start symbol: toplevel. *)

  | MenhirState18 : ((('s, _menhir_box_toplevel) _menhir_cell1_LPAREN, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_state
    (** State 18.
        Stack shape : LPAREN term.
        Start symbol: toplevel. *)

  | MenhirState20 : ((('s, _menhir_box_toplevel) _menhir_cell1_QUAL, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_state
    (** State 20.
        Stack shape : QUAL term.
        Start symbol: toplevel. *)

  | MenhirState21 : (((('s, _menhir_box_toplevel) _menhir_cell1_QUAL, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_COMMA, _menhir_box_toplevel) _menhir_state
    (** State 21.
        Stack shape : QUAL term COMMA.
        Start symbol: toplevel. *)

  | MenhirState22 : ((((('s, _menhir_box_toplevel) _menhir_cell1_QUAL, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_COMMA, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_state
    (** State 22.
        Stack shape : QUAL term COMMA term.
        Start symbol: toplevel. *)

  | MenhirState26 : (('s, _menhir_box_toplevel) _menhir_cell1_QUAL _menhir_cell0_ID, _menhir_box_toplevel) _menhir_state
    (** State 26.
        Stack shape : QUAL ID.
        Start symbol: toplevel. *)

  | MenhirState29 : (('s, _menhir_box_toplevel) _menhir_cell1_QUAL, _menhir_box_toplevel) _menhir_state
    (** State 29.
        Stack shape : QUAL.
        Start symbol: toplevel. *)

  | MenhirState30 : (('s, _menhir_box_toplevel) _menhir_cell1_LPAREN, _menhir_box_toplevel) _menhir_state
    (** State 30.
        Stack shape : LPAREN.
        Start symbol: toplevel. *)

  | MenhirState34 : ((('s, _menhir_box_toplevel) _menhir_cell1_QUAL, _menhir_box_toplevel) _menhir_cell1_pretype, _menhir_box_toplevel) _menhir_state
    (** State 34.
        Stack shape : QUAL pretype.
        Start symbol: toplevel. *)

  | MenhirState37 : ((('s, _menhir_box_toplevel) _menhir_cell1_QUAL, _menhir_box_toplevel) _menhir_cell1_pretype, _menhir_box_toplevel) _menhir_state
    (** State 37.
        Stack shape : QUAL pretype.
        Start symbol: toplevel. *)

  | MenhirState41 : ((('s, _menhir_box_toplevel) _menhir_cell1_QUAL _menhir_cell0_ID, _menhir_box_toplevel) _menhir_cell1_pretype, _menhir_box_toplevel) _menhir_state
    (** State 41.
        Stack shape : QUAL ID pretype.
        Start symbol: toplevel. *)

  | MenhirState42 : (((('s, _menhir_box_toplevel) _menhir_cell1_QUAL _menhir_cell0_ID, _menhir_box_toplevel) _menhir_cell1_pretype, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_state
    (** State 42.
        Stack shape : QUAL ID pretype term.
        Start symbol: toplevel. *)

  | MenhirState44 : ((('s, _menhir_box_toplevel) _menhir_cell1_SPLIT, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_state
    (** State 44.
        Stack shape : SPLIT term.
        Start symbol: toplevel. *)

  | MenhirState49 : (((('s, _menhir_box_toplevel) _menhir_cell1_SPLIT, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_AS _menhir_cell0_ID _menhir_cell0_ID, _menhir_box_toplevel) _menhir_state
    (** State 49.
        Stack shape : SPLIT term AS ID ID.
        Start symbol: toplevel. *)

  | MenhirState50 : ((((('s, _menhir_box_toplevel) _menhir_cell1_SPLIT, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_AS _menhir_cell0_ID _menhir_cell0_ID, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_state
    (** State 50.
        Stack shape : SPLIT term AS ID ID term.
        Start symbol: toplevel. *)

  | MenhirState51 : ((('s, _menhir_box_toplevel) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_state
    (** State 51.
        Stack shape : LET ID term.
        Start symbol: toplevel. *)

  | MenhirState52 : (((('s, _menhir_box_toplevel) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_SEMI, _menhir_box_toplevel) _menhir_state
    (** State 52.
        Stack shape : LET ID term SEMI.
        Start symbol: toplevel. *)


and ('s, 'r) _menhir_cell1_pretype = 
  | MenhirCell1_pretype of 's * ('s, 'r) _menhir_state * (Ast.pretype)

and ('s, 'r) _menhir_cell1_term = 
  | MenhirCell1_term of 's * ('s, 'r) _menhir_state * (Ast.term)

and ('s, 'r) _menhir_cell1_AS = 
  | MenhirCell1_AS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_COMMA = 
  | MenhirCell1_COMMA of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ELSE = 
  | MenhirCell1_ELSE of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_ID = 
  | MenhirCell0_ID of 's * (
# 1 "lib/parser.mly"
       (string)
# 209 "lib/parser.ml"
)

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LET = 
  | MenhirCell1_LET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_QUAL = 
  | MenhirCell1_QUAL of 's * ('s, 'r) _menhir_state * (
# 2 "lib/parser.mly"
       (Ast.qualifier)
# 225 "lib/parser.ml"
)

and ('s, 'r) _menhir_cell1_SEMI = 
  | MenhirCell1_SEMI of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_SPLIT = 
  | MenhirCell1_SPLIT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_THEN = 
  | MenhirCell1_THEN of 's * ('s, 'r) _menhir_state

and _menhir_box_toplevel = 
  | MenhirBox_toplevel of (Ast.toplevel) [@@unboxed]

let _menhir_action_01 =
  fun _1 ->
    (
# 42 "lib/parser.mly"
                  ( Ast.TyBool _1 )
# 245 "lib/parser.ml"
     : (Ast.pretype))

let _menhir_action_02 =
  fun q ty1 ty2 ->
    (
# 43 "lib/parser.mly"
                                                         ( Ast.TyPair (q,ty1,ty2) )
# 253 "lib/parser.ml"
     : (Ast.pretype))

let _menhir_action_03 =
  fun q ty1 ty2 ->
    (
# 44 "lib/parser.mly"
                                                         ( Ast.TyFunc (q,ty1,ty2) )
# 261 "lib/parser.ml"
     : (Ast.pretype))

let _menhir_action_04 =
  fun _2 ->
    (
# 45 "lib/parser.mly"
                            ( _2 )
# 269 "lib/parser.ml"
     : (Ast.pretype))

let _menhir_action_05 =
  fun _1 ->
    (
# 28 "lib/parser.mly"
               ( _1 )
# 277 "lib/parser.ml"
     : (Ast.term))

let _menhir_action_06 =
  fun tm1 tm2 ->
    (
# 29 "lib/parser.mly"
                            ( Ast.TmApp (tm1, tm2) )
# 285 "lib/parser.ml"
     : (Ast.term))

let _menhir_action_07 =
  fun _1 ->
    (
# 32 "lib/parser.mly"
         ( Ast.TmVar _1 )
# 293 "lib/parser.ml"
     : (Ast.term))

let _menhir_action_08 =
  fun _1 _2 ->
    (
# 33 "lib/parser.mly"
                ( Ast.TmBoolean (_1,_2) )
# 301 "lib/parser.ml"
     : (Ast.term))

let _menhir_action_09 =
  fun tm1 tm2 tm3 ->
    (
# 34 "lib/parser.mly"
                                              ( Ast.TmIf (tm1,tm2,tm3) )
# 309 "lib/parser.ml"
     : (Ast.term))

let _menhir_action_10 =
  fun q tm1 tm2 ->
    (
# 35 "lib/parser.mly"
                                                ( Ast.TmPair (q,tm1,tm2) )
# 317 "lib/parser.ml"
     : (Ast.term))

let _menhir_action_11 =
  fun tm1 tm2 v1 v2 ->
    (
# 36 "lib/parser.mly"
                                                      ( Ast.TmSplit (tm1,v1,v2,tm2) )
# 325 "lib/parser.ml"
     : (Ast.term))

let _menhir_action_12 =
  fun q tm ty v ->
    (
# 37 "lib/parser.mly"
                                                      ( Ast.TmAbs (q,v,ty,tm) )
# 333 "lib/parser.ml"
     : (Ast.term))

let _menhir_action_13 =
  fun _2 ->
    (
# 38 "lib/parser.mly"
                         ( _2 )
# 341 "lib/parser.ml"
     : (Ast.term))

let _menhir_action_14 =
  fun _2 _4 _6 ->
    (
# 16 "lib/parser.mly"
                                 ( (_2,_4) :: _6 )
# 349 "lib/parser.ml"
     : (Ast.toplevel))

let _menhir_action_15 =
  fun () ->
    (
# 17 "lib/parser.mly"
      ( [] )
# 357 "lib/parser.ml"
     : (Ast.toplevel))

let _menhir_action_16 =
  fun () ->
    (
# 18 "lib/parser.mly"
          ( [] )
# 365 "lib/parser.ml"
     : (Ast.toplevel))

let _menhir_action_17 =
  fun () ->
    let _ = (
# 20 "lib/parser.mly"
    ( failwith
        (Printf.sprintf "parse error near characters %d-%d"
           (Parsing.symbol_start ())
           (Parsing.symbol_end ()))
    )
# 377 "lib/parser.ml"
     : (Ast.toplevel)) in
    prerr_string "Menhir: misuse: the semantic action associated with the production\ntoplevel -> error\nis expected to abort the parser, but does not do so.\n";
    assert false

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | ARROW ->
        "ARROW"
    | AS ->
        "AS"
    | BOOL _ ->
        "BOOL"
    | COLON ->
        "COLON"
    | COMMA ->
        "COMMA"
    | DOT ->
        "DOT"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | ID _ ->
        "ID"
    | IF ->
        "IF"
    | IN ->
        "IN"
    | LAMBDA ->
        "LAMBDA"
    | LEFT ->
        "LEFT"
    | LET ->
        "LET"
    | LPAREN ->
        "LPAREN"
    | MULTI ->
        "MULTI"
    | QUAL _ ->
        "QUAL"
    | RIGHT ->
        "RIGHT"
    | RPAREN ->
        "RPAREN"
    | SEMI ->
        "SEMI"
    | SPLIT ->
        "SPLIT"
    | THEN ->
        "THEN"
    | TYBOOL ->
        "TYBOOL"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_55_spec_00 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _v ->
      MenhirBox_toplevel _v
  
  let rec _menhir_run_54 : type  ttv_stack. (((ttv_stack, _menhir_box_toplevel) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_SEMI -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _v ->
      let MenhirCell1_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_term (_menhir_stack, _, _4) = _menhir_stack in
      let MenhirCell0_ID (_menhir_stack, _2) = _menhir_stack in
      let MenhirCell1_LET (_menhir_stack, _menhir_s) = _menhir_stack in
      let _6 = _v in
      let _v = _menhir_action_14 _2 _4 _6 in
      _menhir_goto_toplevel _menhir_stack _v _menhir_s
  
  and _menhir_goto_toplevel : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState00 ->
          _menhir_run_55_spec_00 _menhir_stack _v
      | MenhirState52 ->
          _menhir_run_54 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_error_run_55 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _v ->
      MenhirBox_toplevel _v
  
  let rec _menhir_error_goto_toplevel : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState00 ->
          _menhir_error_run_55 _menhir_stack _v
      | MenhirState52 ->
          _menhir_error_run_54 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_error_run_54 : type  ttv_stack. (((ttv_stack, _menhir_box_toplevel) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_SEMI -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _v ->
      let MenhirCell1_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_term (_menhir_stack, _, _4) = _menhir_stack in
      let MenhirCell0_ID (_menhir_stack, _2) = _menhir_stack in
      let MenhirCell1_LET (_menhir_stack, _menhir_s) = _menhir_stack in
      let _6 = _v in
      let _v = _menhir_action_14 _2 _4 _6 in
      _menhir_error_goto_toplevel _menhir_stack _v _menhir_s
  
  let rec _menhir_error_run_01 : type  ttv_stack. ttv_stack -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_s ->
      let _v = _menhir_action_17 () in
      _menhir_error_goto_toplevel _menhir_stack _v _menhir_s
  
  let rec _menhir_run_02 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | ID _v ->
          let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQ ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | SPLIT ->
                  _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState04
              | QUAL _v_0 ->
                  _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState04
              | LPAREN ->
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState04
              | IF ->
                  _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState04
              | ID _v_1 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _1 = _v_1 in
                  let _v = _menhir_action_07 _1 in
                  _menhir_run_11_spec_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_05 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_SPLIT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SPLIT ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState05
      | QUAL _v ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05
      | LPAREN ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState05
      | IF ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState05
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_11_spec_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_06 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT ->
          let _menhir_stack = MenhirCell1_QUAL (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SPLIT ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
          | QUAL _v_0 ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState07
          | LPAREN ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
          | ID _v_1 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_1 in
              let _v = _menhir_action_07 _1 in
              _menhir_run_11_spec_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | LAMBDA ->
          let _menhir_stack = MenhirCell1_QUAL (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ID _v ->
              let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COLON ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | QUAL _v ->
                      _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState26
                  | LPAREN ->
                      _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState26
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | BOOL _v_5 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_1, _2) = (_v, _v_5) in
          let _v = _menhir_action_08 _1 _2 in
          _menhir_goto_term_sub _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_08 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SPLIT ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
      | QUAL _v ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState08
      | LPAREN ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
      | IF ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_11_spec_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_09 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SPLIT ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState09
      | QUAL _v ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState09
      | LPAREN ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState09
      | IF ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState09
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_11_spec_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_11_spec_09 : type  ttv_stack. (ttv_stack, _menhir_box_toplevel) _menhir_cell1_IF -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_05 _1 in
      _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState09 _tok
  
  and _menhir_run_12 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | THEN ->
          let _menhir_stack = MenhirCell1_THEN (_menhir_stack, MenhirState12) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SPLIT ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState13
          | QUAL _v_0 ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState13
          | LPAREN ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState13
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState13
          | ID _v_1 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_1 in
              let _v = _menhir_action_07 _1 in
              _menhir_run_11_spec_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | SPLIT ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState12
      | QUAL _v_3 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState12
      | LPAREN ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState12
      | IF ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState12
      | ID _v_4 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_11_spec_13 : type  ttv_stack. (((ttv_stack, _menhir_box_toplevel) _menhir_cell1_IF, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_THEN -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_05 _1 in
      _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState13 _tok
  
  and _menhir_run_14 : type  ttv_stack. ((((ttv_stack, _menhir_box_toplevel) _menhir_cell1_IF, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_THEN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SPLIT ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
      | QUAL _v_0 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState14
      | LPAREN ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
      | IF ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
      | ID _v_1 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_1 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ELSE ->
          let _menhir_stack = MenhirCell1_ELSE (_menhir_stack, MenhirState14) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SPLIT ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | QUAL _v_3 ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState15
          | LPAREN ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | ID _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_4 in
              let _v = _menhir_action_07 _1 in
              _menhir_run_11_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_17 : type  ttv_stack. (ttv_stack, _menhir_box_toplevel) _menhir_cell1_term -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_term (_menhir_stack, _menhir_s, tm1) = _menhir_stack in
      let tm2 = _v in
      let _v = _menhir_action_06 tm1 tm2 in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_term : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState04 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState49 ->
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState05 ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState41 ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState21 ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState07 ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState08 ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState15 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState13 ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState09 ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_51 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_LET _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SPLIT ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | SEMI ->
          let _menhir_stack = MenhirCell1_SEMI (_menhir_stack, MenhirState51) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LET ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
          | EOF ->
              let _v = _menhir_action_16 () in
              _menhir_run_54 _menhir_stack _v
          | _ ->
              _menhir_error_run_01 _menhir_stack MenhirState52)
      | QUAL _v_1 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState51
      | LPAREN ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | IF ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | ID _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_50 : type  ttv_stack. ((((ttv_stack, _menhir_box_toplevel) _menhir_cell1_SPLIT, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_AS _menhir_cell0_ID _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SPLIT ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
      | QUAL _v_0 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState50
      | LPAREN ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
      | IF ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
      | ID _v_1 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_1 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | AS | COMMA | ELSE | RIGHT | RPAREN | SEMI | THEN ->
          let MenhirCell0_ID (_menhir_stack, v2) = _menhir_stack in
          let MenhirCell0_ID (_menhir_stack, v1) = _menhir_stack in
          let MenhirCell1_AS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_term (_menhir_stack, _, tm1) = _menhir_stack in
          let MenhirCell1_SPLIT (_menhir_stack, _menhir_s) = _menhir_stack in
          let tm2 = _v in
          let _v = _menhir_action_11 tm1 tm2 v1 v2 in
          _menhir_goto_term_sub _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_term_sub : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState51 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState44 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState50 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState42 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState20 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState22 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState18 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState12 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState14 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState16 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState04 ->
          _menhir_run_11_spec_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState49 ->
          _menhir_run_11_spec_49 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState05 ->
          _menhir_run_11_spec_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState41 ->
          _menhir_run_11_spec_41 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState21 ->
          _menhir_run_11_spec_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState07 ->
          _menhir_run_11_spec_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState08 ->
          _menhir_run_11_spec_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState15 ->
          _menhir_run_11_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState13 ->
          _menhir_run_11_spec_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState09 ->
          _menhir_run_11_spec_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_11_spec_04 : type  ttv_stack. (ttv_stack, _menhir_box_toplevel) _menhir_cell1_LET _menhir_cell0_ID -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_05 _1 in
      _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState04 _tok
  
  and _menhir_run_11_spec_49 : type  ttv_stack. (((ttv_stack, _menhir_box_toplevel) _menhir_cell1_SPLIT, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_AS _menhir_cell0_ID _menhir_cell0_ID -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_05 _1 in
      _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState49 _tok
  
  and _menhir_run_11_spec_05 : type  ttv_stack. (ttv_stack, _menhir_box_toplevel) _menhir_cell1_SPLIT -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_05 _1 in
      _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05 _tok
  
  and _menhir_run_44 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_SPLIT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SPLIT ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | QUAL _v_0 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState44
      | LPAREN ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | IF ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | ID _v_1 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_1 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | AS ->
          let _menhir_stack = MenhirCell1_AS (_menhir_stack, MenhirState44) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ID _v_3 ->
              let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v_3) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COMMA ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | ID _v_4 ->
                      let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v_4) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | IN ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | SPLIT ->
                              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
                          | QUAL _v_5 ->
                              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState49
                          | LPAREN ->
                              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
                          | IF ->
                              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
                          | ID _v_6 ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              let _1 = _v_6 in
                              let _v = _menhir_action_07 _1 in
                              _menhir_run_11_spec_49 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_11_spec_41 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_QUAL _menhir_cell0_ID, _menhir_box_toplevel) _menhir_cell1_pretype -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_05 _1 in
      _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState41 _tok
  
  and _menhir_run_42 : type  ttv_stack. (((ttv_stack, _menhir_box_toplevel) _menhir_cell1_QUAL _menhir_cell0_ID, _menhir_box_toplevel) _menhir_cell1_pretype as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SPLIT ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | QUAL _v_0 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState42
      | LPAREN ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | IF ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | ID _v_1 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_1 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | AS | COMMA | ELSE | RIGHT | RPAREN | SEMI | THEN ->
          let MenhirCell1_pretype (_menhir_stack, _, ty) = _menhir_stack in
          let MenhirCell0_ID (_menhir_stack, v) = _menhir_stack in
          let MenhirCell1_QUAL (_menhir_stack, _menhir_s, q) = _menhir_stack in
          let tm = _v in
          let _v = _menhir_action_12 q tm ty v in
          _menhir_goto_term_sub _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_11_spec_21 : type  ttv_stack. (((ttv_stack, _menhir_box_toplevel) _menhir_cell1_QUAL, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_COMMA -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_05 _1 in
      _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState21 _tok
  
  and _menhir_run_22 : type  ttv_stack. ((((ttv_stack, _menhir_box_toplevel) _menhir_cell1_QUAL, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_COMMA as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SPLIT ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | RIGHT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_COMMA (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_term (_menhir_stack, _, tm1) = _menhir_stack in
          let MenhirCell1_QUAL (_menhir_stack, _menhir_s, q) = _menhir_stack in
          let tm2 = _v in
          let _v = _menhir_action_10 q tm1 tm2 in
          _menhir_goto_term_sub _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | QUAL _v_0 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState22
      | LPAREN ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | IF ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | ID _v_1 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_1 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_11_spec_07 : type  ttv_stack. (ttv_stack, _menhir_box_toplevel) _menhir_cell1_QUAL -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_05 _1 in
      _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
  
  and _menhir_run_20 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_QUAL as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SPLIT ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | QUAL _v_0 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState20
      | LPAREN ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | IF ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | ID _v_1 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_1 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | COMMA ->
          let _menhir_stack = MenhirCell1_COMMA (_menhir_stack, MenhirState20) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SPLIT ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState21
          | QUAL _v_3 ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState21
          | LPAREN ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState21
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState21
          | ID _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_4 in
              let _v = _menhir_action_07 _1 in
              _menhir_run_11_spec_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_11_spec_08 : type  ttv_stack. (ttv_stack, _menhir_box_toplevel) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_05 _1 in
      _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState08 _tok
  
  and _menhir_run_18 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SPLIT ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_13 _2 in
          _menhir_goto_term_sub _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | QUAL _v_0 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState18
      | LPAREN ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | IF ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | ID _v_1 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_1 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_11_spec_15 : type  ttv_stack. (((((ttv_stack, _menhir_box_toplevel) _menhir_cell1_IF, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_THEN, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_ELSE -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_05 _1 in
      _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState15 _tok
  
  and _menhir_run_16 : type  ttv_stack. ((((((ttv_stack, _menhir_box_toplevel) _menhir_cell1_IF, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_THEN, _menhir_box_toplevel) _menhir_cell1_term, _menhir_box_toplevel) _menhir_cell1_ELSE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SPLIT ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState16
      | QUAL _v_0 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState16
      | LPAREN ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState16
      | IF ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState16
      | ID _v_1 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_1 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | AS | COMMA | ELSE | RIGHT | RPAREN | SEMI | THEN ->
          let MenhirCell1_ELSE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_term (_menhir_stack, _, tm2) = _menhir_stack in
          let MenhirCell1_THEN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_term (_menhir_stack, _, tm1) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let tm3 = _v in
          let _v = _menhir_action_09 tm1 tm2 tm3 in
          _menhir_goto_term_sub _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_27 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TYBOOL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_01 _1 in
          _menhir_goto_pretype _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | LPAREN ->
          let _menhir_stack = MenhirCell1_QUAL (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUAL _v ->
              _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState29
          | LPAREN ->
              _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState29
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_pretype : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState26 ->
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState37 ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState34 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState29 ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState30 ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_40 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_QUAL _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_pretype (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SPLIT ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState41
          | QUAL _v_0 ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState41
          | LPAREN ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState41
          | IF ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState41
          | ID _v_1 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_1 in
              let _v = _menhir_action_07 _1 in
              _menhir_run_11_spec_41 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_38 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_QUAL, _menhir_box_toplevel) _menhir_cell1_pretype -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_pretype (_menhir_stack, _, ty1) = _menhir_stack in
          let MenhirCell1_QUAL (_menhir_stack, _menhir_s, q) = _menhir_stack in
          let ty2 = _v in
          let _v = _menhir_action_03 q ty1 ty2 in
          _menhir_goto_pretype _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_35 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_QUAL, _menhir_box_toplevel) _menhir_cell1_pretype -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_pretype (_menhir_stack, _, ty1) = _menhir_stack in
          let MenhirCell1_QUAL (_menhir_stack, _menhir_s, q) = _menhir_stack in
          let ty2 = _v in
          let _v = _menhir_action_02 q ty1 ty2 in
          _menhir_goto_pretype _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_33 : type  ttv_stack. ((ttv_stack, _menhir_box_toplevel) _menhir_cell1_QUAL as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_toplevel) _menhir_state -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_pretype (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | MULTI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUAL _v ->
              _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState34
          | LPAREN ->
              _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
          | _ ->
              _eRR ())
      | ARROW ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUAL _v ->
              _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState37
          | LPAREN ->
              _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState37
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_30 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_toplevel) _menhir_state -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUAL _v ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState30
      | LPAREN ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | _ ->
          _eRR ()
  
  and _menhir_run_31 : type  ttv_stack. (ttv_stack, _menhir_box_toplevel) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_04 _2 in
          _menhir_goto_pretype _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  let rec _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LET ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | EOF ->
          let _v = _menhir_action_16 () in
          _menhir_run_55_spec_00 _menhir_stack _v
      | _ ->
          _menhir_error_run_01 _menhir_stack MenhirState00
  
end

let toplevel =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_toplevel v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
