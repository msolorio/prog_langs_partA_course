(* 
THE REPL AND ERRORS
 *)




(*
This program has several errors in it so we can try to debug them.

ORIGINAL 

val x = 34

y = x + 1

val z = if y then 34 else x < 4

val q = if y > 0 then 0

val a = -5

val w = 0

val fun = 34

val v = x / w

val fourteen = 7 - 7

*)

(* SOLUTION *)
val x = 34

val y = x + 1

val z = if y > x then 34 else 4

val q = if y > 0 then 0 else 1

val a = ~5

val w = 1

val funny = 34

val v = x div w

val fourteen = 7 - 7
