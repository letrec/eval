type expression =
  | Numeral of int
  | Plus of expression * expression
  | Minus of expression * expression
  | Times of expression * expression
  | Divide of expression * expression
  | Negate of expression
  | String of string
  | Concatenation of expression * expression
  | Boolean of bool
  | Or of expression * expression
  | And of expression * expression

type value =
  | Bool of bool
  | Int of int
  | Str of string

let value_to_string v =
  match v with
  | Bool b -> string_of_bool b
  | Int i -> string_of_int i
  | Str s -> s