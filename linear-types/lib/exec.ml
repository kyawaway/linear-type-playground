let input_file ()
  = if Array.length Sys.argv = 1 then exit 0 else open_in Sys.argv.(1)

let rec exec_ast toplv con =
  match toplv with
    [] -> con
  | (n,t) :: xs -> let (t',c) = Typecheck.type_check t con in
  exec_ast xs ((n,t') :: c);;


let input_code () = Parser.toplevel Lexer.main (Lexing.from_channel (input_file ()))

let exec code  =
  let con = exec_ast code [] in
  let unused = List.filter (fun (s,x) -> Typecheck.get_qualifier x = Ast.Lin && s <> "main") con in
  if List.length unused = 0 then Ast.context_of_string con ""
  else raise (Typecheck.UnUsedError (fst (List.hd unused)));
  
