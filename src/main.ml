open Syntax

let (|>) a f = f a

let error () = failwith "Typing error."

let rec eval e =
  match e with
  | Boolean b -> Bool b
  | Or (Boolean x, Boolean y) -> Bool (x || y)
  | And (Boolean x, Boolean y) -> Bool (x && y)
  | Numeral n -> Int n
  | Plus (Numeral x, Numeral y) -> Int (x + y)
  | Plus (Numeral x, y) -> Int (x + (to_int y))
  | Plus (x, y) -> Int ((to_int x) + (to_int y))
  | Minus (Numeral x, Numeral y) -> Int (x - y)
  | Minus (Numeral x, y) -> Int (x - (to_int y))
  | Minus (x, y) -> Int ((to_int x) - (to_int y))
  | Times (Numeral x, Numeral y) -> Int (x * y)
  | Times (Numeral x, y) -> Int (x * (to_int y))
  | Times (x, y) -> Int ((to_int x) * (to_int y))
  | Divide (Numeral x, Numeral y) -> Int (x / y)
  | Divide (Numeral x, y) -> Int (x / (to_int y))
  | Divide (x, y) -> Int ((to_int x) / (to_int y))
  | Negate (Numeral x) -> Int (-x)
  | Negate x -> Int (-(to_int x))
  | String s -> Str s
  | Concatenation (String x, String y) -> Str (x ^ y)
  | Concatenation (String x, y) -> Str (x ^ (to_string y))
  | Concatenation (x, y) -> Str ((to_string x) ^ (to_string y))
  | _ -> error ()

and to_int e =
  let e' = eval e in
  match e' with
  | Int i -> i
  | _ -> error ()

and to_string e =
  let e' = eval e in
  match e' with
  | Str s -> s
  | _ -> error ()


let main =
  
  try
    while true do
      print_string "> ";
      let str = read_line () in
      try
        let e = Parser.toplevel Lexer.lexeme (Lexing.from_string str) in
        e |> eval |> value_to_string |> print_endline
      with
      | Failure str -> print_endline str
      | Parsing.Parse_error -> print_endline "Syntax error."
    done
  with
    End_of_file -> ();;