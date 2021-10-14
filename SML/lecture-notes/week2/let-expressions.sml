(* fun silly1 (z: int) =
  let 
    val x = if z > 0 then z else 34
    val y = z + x + 9
  in
    if x > y then x * 2 else y * y
  end; *)

(* silly1 2; *)

(* fun silly2 () =
  let
    val x = 1
  in
    (let val x = 2 in x + 1 end)
    + (let val y = x + 2 in y + 1 end)
  end;

silly2(); *)

(* *********************************************** *)

(* fun count (from: int, to: int) =
  if from=to
  then to::[]
  else from::count(from + 1, to);

count (0, 2); *)

(* 0::1::2::[] *)

fun countdown_list (from: int, to: int) =
  if from = to
  then from::[]
  else from::countdown_list(from - 1, to);

(* 2::1::0::[] *)

countdown_list (5, 0);