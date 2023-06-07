open Preproc
open Util
open Js_of_ocaml

let code str = Parser.toplevel Lexer.main (Lexing.from_string str)
let exec_js = Js.string <. Exec.exec <. code

let () =
  Js.export "LinearTypes"
    (object%js
       method run = exec_js <. Js.to_string
    end)
