(* LET AND EFFICIENCY *)

fun good_max (xs: int list) =
  if null xs
  then 0
  else if null (tl xs)
  then hd xs
  else
    let
      val tl_ans = good_max(tl xs)
    in
      if hd xs > tl_ans
      then hd xs
      else tl_ans
    end;


val my_list = [1, 5, 2, 0];

good_max (my_list);

(* ************************************************* *)

fun find_max(nums: int list) =
  let
    val hd_nums = hd nums
    val tl_nums = tl nums
  in
    if null nums
    then 0
    else if null tl_nums
    then hd_nums
    else
      let
        val tl_max = find_max(tl_nums)
      in
        if hd_nums > tl_max
        then hd_nums
        else tl_max
      end
  end;


find_max([1, 2, 0]);
