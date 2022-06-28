(* PASSING CLOSURE TO ITERATORS *)

fun filter(f, xs) =
  case xs of
    [] => []
  | x::xs' => if f(x)
              then x::filter(f, xs')
              else filter(f, xs');

(* Returns list of items greater than 7 *)
fun all_greater_than_seven xs =
  filter(fn x => x > 7, xs);

(* Returns list of items greater than n *)
(* Creates a closure *)
fun all_greater_than (xs, n) =
  filter(fn x => x > n, xs);

