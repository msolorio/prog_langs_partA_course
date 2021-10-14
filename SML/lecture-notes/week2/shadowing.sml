(* Programming Languages, Dan Grossman *)
(* Section 1: Examples to Demonstrate Shadowing *)

val a = 10
(* static env - a: int *)
(* dynamic env - a --> 10 *)

val b = a * 2
(* dynamic env - a --> 10, b --> 20 *)

val a = 5
(* a --> 5, b --> 20 *)

val c = b
(* a --> 5, b --> 20, c --> 20 *)

val d = a
(* a --> 5, b --> 20, c --> 20, d --> 5 *)

val a = a + 1
(* a --> 6, b --> 20, c --> 20, d --> 5 *)

val f = a * 2
(* a --> 6, f --> 12 *)

val g = f - 3

