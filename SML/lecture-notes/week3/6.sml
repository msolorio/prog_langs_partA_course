(*
USEFUL DATATYPES

one-of types
*)

(* datatype suit = Club | Diamond | Heart | Spade;

datatype rank = Jack | Queen | King | Ace | Num of int;

datatype id = StudentNum of int
          | Name of string*string*string;

(* Expression Tree *)

datatype exp = Constant of int
              | Negate of exp
              | Add of exp*exp
              | Multiply of exp*exp;


fun eval e =
  case e of
      Constant i        => i
    | Negate e2         => ~ (eval e2)
    | Add(e1, e2)       => (eval e1) + (eval e2)
    | Multiply(e1, e2)  => (eval e1) * (eval e2);


fun number_of_adds e = (* exp -> int *)
  case e of
      Constant i        => 0
    | Negate e2         => number_of_adds e2
    | Add(e1, e2)       => 1 + number_of_adds e1 + number_of_adds e2
    | Multiply(e1, e2)  => number_of_adds e1 + number_of_adds e2;


val example_exp: exp = Add(Constant 19, Negate (Constant 4));

eval example_exp;

number_of_adds example_exp; *)

(* datatype suit = Club | Diamond | Heart | Spade
datatype rank = Jack | Queen | King | Ace | Num of int *)

(* Can define types of an expression *)
datatype exp = Constant of int
              | Negate of exp
              | Add of exp * exp
              | Multiply of exp * exp

(* A function that takes in an expression and evaluates it *)
(* fun eval e =
  case e of
    Constant i => i
    | Negate e2 => ~(eval e2)
    | Add(e1, e2) => (eval e1) + (eval e2)
    | Multiply(e1, e2) => (eval e1) * (eval e2); *)

(* val my_exp = Add (Constant 3, Constant 4); *)
(* val my_exp = Add (Constant 19, Negate (Constant 4)); *)

(* eval(my_exp); *)

fun number_of_adds e =
  case e of
    Constant i          => 0
    | Negate e2         => number_of_adds e2
    | Add(e1, e2)       => 1 + number_of_adds e1 + number_of_adds e2
    | Multiply(e1, e2)  => number_of_adds e1 + number_of_adds e2

(* val e1 = Add(Constant 3, Add(Constant 1, Constant 2)); *)

number_of_adds e1;
