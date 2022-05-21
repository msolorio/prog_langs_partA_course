(* LET EXPRESSIONS *)

(*
SYNTAX
let
  b1
  b2
in
  e
end;

Bindings are set after the 'let' keyword.
can then use those bindings in expression after 'in' keyword.
end with 'end'.

TYPE-CHECKING


*)

(* fun silly1 (z: int) =
  let 
    val x = if z > 0 then z else 34
    val y = z + x + 9
  in
    if x > y then x * 2 else y * y
  end; *)

(* silly1 2; *)

(* let
  val x = 1
in
  x + 2
end; *)

(* let
  val x = 1
in
  (let val x = 2 in x + 1 end)
  + (let val y = x + 2 in y + 1 end)
end; *)

(* fun count(from: int, to: int) =
  if from = to
  then to::[]
  else from::count(from + 1, to);

count(3, 7);
count(21, 27); *)

(* 3::4::5::6::7::[] ==> [3, 4, 5, 6, 7] *)
(* 
fun countup_from1(x: int) =
  let
    fun count(from:int, to:int) =
      if from = to
      then to::[]
      else from::count(from+1, to);
  in
    count(1, x)
  end;


countup_from1(5); (* [1, 2, 3, 4, 5] *)
countup_from1(7); (* [1, 2, 3, 4, 5, 6, 7] *)
 *)

fun countup_from1(x: int) =
  let
    fun count(from: int) =
      if from = x
      then x::[]
      else from::count(from + 1)
  in
    count(1)
  end;

(* 1::2::3::4::5::[] ==> [1, 2, 3, 4, 5] *)

(* *********************************************** *)

(* fun countdown_to1(x: int) =
  if x = 0
  then []
  else x::countdown_to1(x - 1);

countdown_to1(5);
countdown_to1(7); *)

(* fun count (from: int, to: int) =
  if from=to
  then to::[]
  else from::count(from + 1, to);

count (0, 2); *)

(* 0::1::2::[] *)

(* fun countdown_list (from: int, to: int) =
  if from = to
  then from::[]
  else from::countdown_list(from - 1, to); *)

(* 2::1::0::[] *)

(* countdown_list (5, 0); *)

(* ********************************************************** *)
(* this is poor style but still a good thought exercise *)
(* fun bad_max (xs: int list) =
  if null xs
  then 0
  else if null (tl xs)
  then hd xs
  else if hd xs > bad_max(tl xs)
  then hd xs
  else bad_max(tl xs);

bad_max([5, 3, 20, 10, 6]); *)


(* fun good_max (xs: int list) =
  if null xs
  then 0
  else if null (tl xs)
  then hd xs
  else
    let
      val tl_ans = good_max(tl xs)
      val hd_ans = hd xs
    in
      if hd_ans > tl_ans
      then hd_ans
      else tl_ans 
    end;

good_max([3, 7, 1, 17, 5, 9]); *)

