open Ast
open Parser
open Typecheck

let input_file () =
  if Array.length Sys.argv = 1 then exit 0 else open_in Sys.argv.(1)

let rec exec_ast toplv con =
  match toplv with
  | [] -> con
  | (n, t) :: xs ->
      let t', c = type_check t con in
      exec_ast xs ((n, t') :: c)

let input_code () = toplevel Lexer.main (Lexing.from_channel (input_file ()))

let exec code =
  let con = exec_ast code [] in
  let unused =
    List.filter (fun (s, x) -> get_qualifier x = Lin && s <> "main") con
  in
  if List.length unused = 0 then context_of_string con ""
  else raise (UnUsedError (fst (List.hd unused)))
