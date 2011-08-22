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

open Parsing;;
# 2 "src/parser.mly"
  open Syntax
# 21 "src/parser.ml"
let yytransl_const = [|
  258 (* OR *);
  259 (* AND *);
  261 (* PLUS *);
  262 (* MINUS *);
  263 (* TIMES *);
  264 (* DIVIDE *);
  265 (* UMINUS *);
  267 (* CONCATENATION *);
  268 (* LPAREN *);
  269 (* RPAREN *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* BOOLEAN *);
  260 (* NUMERAL *);
  266 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\000\000"

let yylen = "\002\000\
\002\000\001\000\003\000\003\000\003\000\003\000\002\000\001\000\
\003\000\001\000\003\000\003\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\010\000\002\000\000\000\008\000\000\000\014\000\
\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\001\000\013\000\000\000\000\000\000\000\000\000\
\003\000\006\000\009\000"

let yydgoto = "\002\000\
\008\000\009\000"

let yysindex = "\255\255\
\031\255\000\000\000\000\000\000\031\255\000\000\031\255\000\000\
\027\000\000\000\023\255\031\255\031\255\031\255\031\255\031\255\
\031\255\031\255\000\000\000\000\253\254\253\254\037\255\037\255\
\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\013\000\015\000\001\000\006\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\004\000"

let yytablesize = 294
let yytable = "\001\000\
\004\000\014\000\015\000\016\000\017\000\005\000\000\000\018\000\
\010\000\000\000\011\000\000\000\011\000\000\000\012\000\021\000\
\022\000\023\000\024\000\025\000\026\000\027\000\000\000\000\000\
\012\000\013\000\019\000\014\000\015\000\016\000\017\000\003\000\
\000\000\018\000\004\000\020\000\005\000\000\000\000\000\000\000\
\006\000\000\000\007\000\016\000\017\000\000\000\000\000\018\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\004\000\004\000\000\000\004\000\004\000\005\000\
\005\000\000\000\005\000\005\000\000\000\004\000\011\000\011\000\
\012\000\012\000\005\000\000\000\000\000\000\000\000\000\000\000\
\000\000\011\000\000\000\012\000\012\000\013\000\000\000\014\000\
\015\000\016\000\017\000\000\000\000\000\018\000"

let yycheck = "\001\000\
\000\000\005\001\006\001\007\001\008\001\000\000\255\255\011\001\
\005\000\255\255\007\000\255\255\000\000\255\255\000\000\012\000\
\013\000\014\000\015\000\016\000\017\000\018\000\255\255\255\255\
\002\001\003\001\000\000\005\001\006\001\007\001\008\001\001\001\
\255\255\011\001\004\001\013\001\006\001\255\255\255\255\255\255\
\010\001\255\255\012\001\007\001\008\001\255\255\255\255\011\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\002\001\003\001\255\255\005\001\006\001\002\001\
\003\001\255\255\005\001\006\001\255\255\013\001\002\001\003\001\
\002\001\003\001\013\001\255\255\255\255\255\255\255\255\255\255\
\255\255\013\001\255\255\013\001\002\001\003\001\255\255\005\001\
\006\001\007\001\008\001\255\255\255\255\011\001"

let yynames_const = "\
  OR\000\
  AND\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  UMINUS\000\
  CONCATENATION\000\
  LPAREN\000\
  RPAREN\000\
  EOF\000\
  "

let yynames_block = "\
  BOOLEAN\000\
  NUMERAL\000\
  STRING\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expression) in
    Obj.repr(
# 35 "src/parser.mly"
                         ( _1 )
# 180 "src/parser.ml"
               : Syntax.expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 39 "src/parser.mly"
                                      ( Numeral _1 )
# 187 "src/parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 40 "src/parser.mly"
                                      ( Times (_1, _3) )
# 195 "src/parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 41 "src/parser.mly"
                                      ( Plus (_1, _3) )
# 203 "src/parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 42 "src/parser.mly"
                                      ( Minus (_1, _3) )
# 211 "src/parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 43 "src/parser.mly"
                                      ( Divide (_1, _3) )
# 219 "src/parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 44 "src/parser.mly"
                                      ( Negate _2 )
# 226 "src/parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 45 "src/parser.mly"
          ( String _1 )
# 233 "src/parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 46 "src/parser.mly"
                                       ( Concatenation (_1, _3) )
# 241 "src/parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 47 "src/parser.mly"
           ( Boolean _1 )
# 248 "src/parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 48 "src/parser.mly"
                            ( Or (_1, _3) )
# 256 "src/parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 49 "src/parser.mly"
                             ( And (_1, _3) )
# 264 "src/parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expression) in
    Obj.repr(
# 50 "src/parser.mly"
                                      ( _2 )
# 271 "src/parser.ml"
               : 'expression))
(* Entry toplevel *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let toplevel (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Syntax.expression)
