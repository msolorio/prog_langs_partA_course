(* ML VARIABLE BINDINGS AND EXPRESSIONS *)

(* This is a comment *)



(* 
STATIC ENVIRONMENT
- is created before file is run
- evaluates the data types of each value / expression
- holds data types in memory

DYNAMIC ENVIRONMENT
- is created when program is actually running
- holds actual values for variables in memory

*)

val x = 34;
(* static environment: x --> int *)
(* dynamic environment: x --> 34 *)

val y = 17;
(* static environment: x --> int, y --> int *)
(* dynamic environment: x --> 34, y --> 17 *)

val z = (x + y) + (y + 2);
(* static environment: x --> int, y --> int, z --> int *)
(* dynamic environment: x --> 34, y --> 17, z --> 70 *)

val abs_of_z = if z < 0 then 0 - z else z
(* static environment: ..., abs_of_z --> int *)
(* both clauses of if statement must return same type *)
(* dynamic environment: abs_of_z --> 70 *)


(* Calling a function - abs returns absolute value *)
val abs_of_z_simple = abs z; (* abs(z); *)

(* defining negative ints *)
val w = ~5;

(*
Variable Binding Anatomy

val x = e;

keyword -> val
Variable name -> x
assignment operator -> =
expression -> e
  - can contain subexpressions
end expression -> ;
*)
