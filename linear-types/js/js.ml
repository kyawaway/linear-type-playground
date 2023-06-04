open Preproc
open Js_of_ocaml

let ( <. ) f g x = f (g x)

let exec_js' str =
  let top = Parser.toplevel Lexer.main (Lexing.from_string str) in
  let con = Exec.exec_ast top [] in
  let unused = List.filter (fun (s,x) -> Typecheck.get_qualifier x = Ast.Lin && s <> "main") con in
  if List.length unused = 0 then Ast.context_of_string con ""
  else ""
  (*else raise (Typecheck.UnUse(fst (List.hd unused)));*)
  

let exec_js = Js.string <. exec_js'

let () =
  Js.export "LinearTypes"
    (object%js
       method run = exec_js <. Js.to_string
    end)

