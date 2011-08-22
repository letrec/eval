{
  open Parser
}

let string = ['a'-'z' 'A'-'Z']+

rule lexeme = parse
	| "true"      { BOOLEAN true }
	| "false"     { BOOLEAN false }
	| "||"        { OR }
	| "&&"        { AND } 
  | [' ' '\t' '\r' '\n']  { lexeme lexbuf }
  | ['0'-'9']+  { NUMERAL (int_of_string (Lexing.lexeme lexbuf)) }
  | '+'         { PLUS }
  | '-'         { MINUS }
  | '*'         { TIMES }
  | '/'         { DIVIDE }
  | '('         { LPAREN }
  | ')'         { RPAREN }
	| string      { STRING (Lexing.lexeme lexbuf) }
	| '^'         { CONCATENATION }
  | eof         { EOF }
