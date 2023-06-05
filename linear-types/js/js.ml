open Preproc
open Util 
open Js_of_ocaml

let code str = Parser.toplevel Lexer.main (Lexing.from_string str)

let exec_js' = Exec.exec <. code

let test1' = "test"
let test2' str = str

let test1 = Js.string test1'

let test2 = Js.string <. test2'

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
       method test1 = test1
       method test2 = test2 <. Js.to_string
    end)

