(* Maps and Filters *)


fun double x = x * 2;

fun get_length s = size s;

(*
Map
- Splits functionality into 2 parts.
- Recursive traversal - map function handles iterating
- Data processing on each item - map client function performs transform on each item
 *)

(* map = fn: ('a -> 'b) * 'a list -> 'b list *)
fun map (f, xs) =
  case xs of
    [] => []
  | x::xs' => (f x)::map(f, xs');


(* map(double, [1, 2, 3]); *)
(* double(1)::double(2)::double(3)::[] *)
(* 2::4::6::[] *)

(* map(get_length, ["hello", "there"]); *)
(* get_length("hello")::get_length("there")::[] *)
(* 5::5::[] *)

(* Filter *)
fun filter (f, xs) =
  case xs of
    [] => []
  | x::xs' => if f (x)
              then x::filter(f, xs')
              else filter(f, xs');

fun get_all_evens xs =
  filter((fn (_, v) => v mod 2 = 0), xs);

get_all_evens [("Bill", 12), ("Ted", 11), ("Rufus", 10)];
(* => [("Bill", 12), ("Rufus", 10)] *)



fun is_even v =
  v mod 2 = 0;

(* Every *)
fun every (f, xs) =
  case xs of
    [] => true
  | x::xs' => if not (f x)
              then false
              else every(f, xs');

every(is_even, [2, 4, 6]);
