(* fun count (from: int, to: int) =
  if from = to
  then from::[]
  else from::count(from + 1, to); *)

(* fun countFrom1 (to: int) =
  count(1, to); *)

fun count_from1 (x: int) =
  let
    fun count (from: int) =
      if from = x
      then from::[]
      else from::count (from + 1)
  in
    count 1
  end;

count_from1 7;
