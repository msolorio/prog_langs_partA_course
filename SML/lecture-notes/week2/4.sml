(* Programming Languages, Dan Grossman *)
(* Section 1: simple functions *)

(* 
NOTES

A function is already a value.
When defining a function, it is not evaluated until the function is called.

 *)

(* this function correct only for y >= 0 *)
(* fun pow (x:int, y:int) = 
    if y=0
    then 1
    else x * pow(x,y-1) *)

fun pow(x: int, y: int) =
  if y = 0
  then 1
  else x * pow(x, y - 1);

val result = pow(2, 2)

(* fun pow(2, 1) =
  if 1 = 0
  then 1
  else 2 * 1

fun pow(2, 0) =
  if 0 = 0
  then 1
  else 2 * pow(2, 0 - 1) *)


fun cube (x:int) =
    pow(x, 3);

val sixtyfour = cube(4)

(*                 16          16          8        2 *)
(* val fortytwo = pow(2,2+2) + pow(4,2) + cube(2) + 2 *)
