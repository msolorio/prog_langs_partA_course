(* LEXICAL SCOPE *)

(* 
The body of the function is evaluated in the environment where the function
is defined, not in the environment where the function is called.
 *)

val x = 1;
fun f y = x + y;
val x = 2;
val y = 3;
val z = f (x + y); 
(* => 6 *)

(* 
CLOSURE - a function which is the combination between
- the function's code
- the environment the function is defined in.
*)

val x = 1;

fun f y =
  let
    val x = y + 1
  in
    fn z => x + y + z
  end;

val x = 3;

val g = f(4);
(* f(4) returns a closure / function that will add 9 to its input. *)

val y = 5;

val z = g(6);
(* z is bound to 15 *)
