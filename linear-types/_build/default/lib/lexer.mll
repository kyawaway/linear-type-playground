{
    open Parser;;
}

rule main = parse
            [' ' '\t' '\n'] { main lexbuf }
          | eof { EOF }
          | "lambda" | "\\" { LAMBDA }
          | "true" { BOOL(true) }
          | "false" { BOOL(false) }
          | "lin" { QUAL(Ast.Lin) }
          | "un" { QUAL(Ast.Un) }
          | "if" { IF }
          | "then" { THEN }
          | "else" { ELSE }
          | "let" { LET }
          | "split" { SPLIT }
          | "in" { IN }
          | "as" { AS }
          | "bool" { TYBOOL }
          | "->" { ARROW }
          | '=' { EQ }
          | ';' { SEMI }
          | ',' { COMMA }
          | '<' { LEFT }
          | '>' { RIGHT }
          | '.' { DOT }
          | ':' { COLON }
          | '*' { MULTI }
          | '(' { LPAREN }
          | ')' { RPAREN }
          | ['a'-'z' 'A'-'Z' '0'-'9']+ { ID(Lexing.lexeme lexbuf) }
