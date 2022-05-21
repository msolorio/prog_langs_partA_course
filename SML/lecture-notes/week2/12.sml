(* OPTIONS *)

(* fn : int list --> int option *)
(*
  returns a SOME holding the max value in the list
  if provided list is empty, returns NONE

  SOME and NONE are both of type option
*)
(* fun max1 (xs: int list) =
  if null xs (* if xs is an empty list *)
  then NONE
  else
    let
      val tl_ans = max1(tl xs)
    in
      if isSome tl_ans andalso valOf tl_ans > hd xs
      then tl_ans
      else SOME (hd xs)
    end; *)



(* fun find_max(xs: int list) =
  if null xs
  then NONE
  else
    let
      val hd_xs = hd xs
      val tl_max = find_max(tl xs)
    in
      if isSome tl_max andalso valOf tl_max > hd_xs
      then tl_max
      else SOME hd_xs
    end; *)





































(* fun max1 (xs: int list) =
  if null xs (* if xs is an empty list *)
  then NONE
  else
    let
      fun max_nonempty (xs: int list) =
        if null (tl xs)
        then hd xs
        else
          let
            val tl_ans = max_nonempty (tl xs)
          in
            if hd xs > tl_ans
            then hd xs
            else tl_ans
          end;
    in
      SOME (max_nonempty xs)
    end; *)

