open Preproc
open Util 
open Js_of_ocaml

let code str = Parser.toplevel Lexer.main (Lexing.from_string str)

let exec_js' = Exec.exec <. code

(*
let exec_js' code str =
  let con = Exec.exec_ast (code str) [] in
  let unused = List.filter (fun (s,x) -> Typecheck.get_qualifier x = Ast.Lin && s <> "main") con in
  if List.length unused = 0 then Ast.context_of_string con ""
  else ""
  *)
  (*else raise (Typecheck.UnUse(fst (List.hd unused)));*)
 

let exec_js = Js.string <. exec_js'

let () =
  Js.export "LinearTypes"
    (object%js
       method run = exec_js <. Js.to_string
    end)

