type token =
  | BOOLEAN of (bool)
  | OR
  | AND
  | NUMERAL of (int)
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | UMINUS
  | STRING of (string)
  | CONCATENATION
  | LPAREN
  | RPAREN
  | EOF

val toplevel :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Syntax.expression
