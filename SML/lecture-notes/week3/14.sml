(* TAIL RECURSION *)


(*
Not tail recursive.
Will add the factorial function to the call stack each time,
filling up the callstack
*)
fun factorial n =
  if n=0 then 1 else n * factorial(n - 1);


(*
(*********************************************************  *)
- When a function's return value is the return value of the recursive call
we say the function is "tail recursive".
- It doesn't have to do any work after the recursive call returns.
- Many languages will perform an optimization with "tail recursive" functions.
- The recursive call will replace the caller on the callstack.
- The callstack doesn't get filled up.
(*********************************************************  *)
*)
fun factorial1 n =
  let
    fun aux(n, acc) =
      if n = 0
      then acc
      else aux(n - 1, acc * n)
  in
    aux(n, 1)
  end;

(* ********************************************************** *)
(* Tail recursion with sum *)
fun sum xs =
  let
    fun aux(xs, acc) =
      case xs of
        [] => acc
      | x::xs' => aux(xs', x + acc)
  in
    aux(xs, 0)
  end;

(* sum [1, 2, 3, 4]; *)

(* ********************************************************** *)
(* Reverse a list with tail recursion *)
fun reverse xs =
  let
    fun aux(xs, acc) =
      case xs of
        [] => []
      | x::xs' => aux(xs', x::acc)
  in
    aux(xs, [])
  end;

(* reverse [1, 2]; *)
(* 2::1::[] *)
