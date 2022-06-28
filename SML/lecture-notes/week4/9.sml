(* FOLD (REDUCE) WITH CLOSURE *)

(* Takes a function which is used to combine each element with an accumulator *)
fun fold (f, acc, xs) =
  case xs of
    [] => acc
  | x::xs' => fold(f, f(acc, x), xs');


fun get_sum xs =
  fold((fn (x, y) => x + y), 0, xs);


(* Without using folding technique *)
fun get_sum2 xs =
  case xs of
    [] => 0
  | x::xs' => x + get_sum2 xs';

get_sum [1, 2, 3];

(* ******************************************** *)
(* Counts how many items in range *)

fun nums_in_range (xs, lo, hi) =
  fold((fn (acc, x) => acc + (if x >= lo andalso x <= hi then 1 else 0)),
    0, xs
  );

(* ******************************************** *)
(* Checks if all string items are shorter than the provided string *)

fun all_are_shorter (xs, s) =
  let
    val i = String.size s
  in
    fold((fn (acc, x) => acc andalso String.size x < i), true, xs)
  end;

all_are_shorter (["hi", "there", ",", "hello", "spaghettiii"], "dachshound");
