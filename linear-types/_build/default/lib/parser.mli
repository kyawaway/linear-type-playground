
(* The type of tokens. *)

type token = 
  | TYBOOL
  | THEN
  | SPLIT
  | SEMI
  | RPAREN
  | RIGHT
  | QUAL of (Ast.qualifier)
  | MULTI
  | LPAREN
  | LET
  | LEFT
  | LAMBDA
  | IN
  | IF
  | ID of (string)
  | EQ
  | EOF
  | ELSE
  | DOT
  | COMMA
  | COLON
  | BOOL of (bool)
  | AS
  | ARROW

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.toplevel)
