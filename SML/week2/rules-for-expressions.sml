(* This is a comment *)

val x = 34;
(* static env: x: int *)
(* dynamic env: x --> 34 *)
val y = 17;
(* static env: x: int, y: int *)
(* dynamic env: x --> 34, y --> 17 *)

val z = ~5;
(* static env: x: int, y: int, z: int *)
(* dynamic env: x --> 34, y --> 17, z --> -5 *)

              (* condition: bool *)
val abs_of_z = if z < 0 then 0 - z else z; (* returns: int *)
(* static env: abs_of_z: int *)
(* dynamic env: abs_of_z --> -5 *)

(*
ML Rules for Expressions

WHAT ARE THE...
1. SYNTAX RULES
  - Checks if the syntax is valid

2. TYPE-CHECKING RULES
  - what types are valid for sub-expressions - look up in the static env.
  - what types of return values

3. EVALUATION RULES
*)

(* 
Given this expression
if e1 then e2 else e3;

Syntax:
  - if, then, and else are keywords
  - e1, e2, and e3 are values - values are expressions that evaluate to themselves

Type-checking
  - e1 evaluate to a boolean
  - e2 and e3 must have the same type

Evaluation Rules
  - 1st evaluate e1 to a value (v1)
  - if v1 is true, evaluate e2 & e2 becames result of whole expression
  - if v1 is false, ealuate e3 & e3 becomes result of the whole expression
 *)

(* 
Given this expression
val e1LessThan = e1 < e2;

Evaluate Syntax, Type-checking, and evaluation

Syntax
- val keywork
- variable name
- assignment operator
- boolean expression
  - expression
  - comparison operator
  - expression

Type-Checking
- e1 & e2 must be ints
- e1 < e2 returns a bool
- e1LessThan stores a bool

Evaluation
- if e1 is less than e2, expression will result in true
- otherwise expression will result in false
- e1LessThan stores the resulting bool
 *)
