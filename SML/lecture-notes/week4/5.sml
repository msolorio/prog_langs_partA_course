(* RETURNING FUNCTIONS *)

(* Takes in a function and returns a function *)

fun double_or_triple f =
  if f 7
  then fn x => 2 * x
  else fn x => 3 * x;
