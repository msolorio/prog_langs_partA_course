(* CURRYING AND PARTIAL APPLICATION *)

(* CURRYING *)
(* Calling a function with a single argument that returns another function that takes 
another argument *)

val sorted3 = fn x => fn y => fn z => z >= y andalso y >= x;

(* sorted3 4 *)
(* => fn y => fn z => z >= y andalso y >= 4 *)

(* (((sorted3 4) 5) 6) *)
(* => true *)

sorted3 4 5 6;
(* => true *)


(*
PARTIAL APPLICATION
- When only some of the arguments in the curried set are passed in.
- The resulting returned closure / function can be used later with the passed in arguments
partially applied.
*)