(* 
DATATYPE BINDINGS

Using datatype bindings to create one-of types in SML

TwoInts is a function that takes int*int and returns a type of mytype
Str is a function that takes a string and returns a type of mytype
Pizza is a value of type mytype

Every instance of a mytype type is made of one of the constructors (in this case TwoInts, Str, or Pizza)
It is a one-of type

the value of a mytype has the tag part (the function name) and the data (the value passed to the function)
 *)

(* mytype will hold (int*int) | string | or 'nothing' *)
(* TwoInts, Str, and Pizza are referred to as constructors *)

datatype mytype = TwoInts of int * int
                | Str of string
                | Pizza

val a = Str "hi"; (* : mytype *)
val b = Str (* b stores the function definition Str - has type fn: string -> mytype *)
val c = Pizza (* : mytype *)
val d = TwoInts (3, 5) (* : mytype *)
val e = a; (* : mytype *)

