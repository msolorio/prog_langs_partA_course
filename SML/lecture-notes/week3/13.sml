(* NESTED PATTERNS *)

(* zip a triple of lists *)
(* ([1,2,3], [4,5,6], [7,8,9]) => [(1,4,7), (2,5,8), (3,6,9)] *)

exception ListLengthMismatch;

fun zip list_triple =
  case list_triple of
    ([], [], []) => []
    | (h1::t1, h2::t2, h3::t3) => (h1,h2,h3)::zip(t1, t2, t3)
    | _ => raise ListLengthMismatch;

(* zip ([1,2,3], [4,5,6], [7,8,9]); *)


(* unzip a list of triples *)
(* [(1,4,7), (2,5,8), (3,6,9)] => ([1,2,3], [4,5,6], [7,8,9]) *)
fun unzip triple_list =
  case triple_list of
    [] => ([], [], [])
    | (a,b,c)::tl => let
                        val (l1, l2, l3) = unzip tl
                      in
                        (a::l1, b::l2, c::l3)
                      end;

(* *********************************************************** *)
(* returns true if the list is non-decreasing throughout. *)

(* fun nondecreasing xs =
  case xs of
    [] => true
  | _::[] => true
  | head::neck::rest => head <= neck andalso nondecreasing (neck::rest); *)

(* nondecreasing [1, 2, 3]; => true *)
(* nondecreasing [1, 2, 3, 0]; => false *)

(* Handling an exception *)

(*
e1 handle ex => e2
*)

(* zip should throw an exception because the lists have different lengths *)
(*
the return type of the handler must be the same as the return type of the
original function.
*)
zip ([1], [2, 3], [4, 5]) handle ex => [(0, 0, 0)];

