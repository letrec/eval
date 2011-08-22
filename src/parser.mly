%{
  open Syntax
%}

/* Lexemes */
%token <bool> BOOLEAN
%token OR
%token AND
%token <int> NUMERAL
%token PLUS
%token MINUS
%token TIMES
%token DIVIDE
%token UMINUS
%token <string> STRING
%token CONCATENATION
%token LPAREN
%token RPAREN
%token EOF

/* Precedence and associativity */
%left OR AND
%left PLUS MINUS
%left TIMES DIVIDE CONCATENATION
%nonassoc UMINUS

/* Top level rule */
%start toplevel
%type <Syntax.expression> toplevel

%%

/* Grammar */

toplevel: expression EOF { $1 }
;

expression:
  | NUMERAL                           { Numeral $1 }
  | expression TIMES  expression      { Times ($1, $3) }
  | expression PLUS   expression      { Plus ($1, $3) }
  | expression MINUS  expression      { Minus ($1, $3) }
  | expression DIVIDE expression      { Divide ($1, $3) }
  | MINUS expression %prec UMINUS     { Negate $2 }
  | STRING { String $1 }
  | expression CONCATENATION expression { Concatenation ($1, $3) }
  | BOOLEAN { Boolean $1 }
  | expression OR expression { Or ($1, $3) }
  | expression AND expression { And ($1, $3) }
  | LPAREN expression RPAREN          { $2 }
;
