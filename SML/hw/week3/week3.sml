(* 1a. 
Write a function all_except_option, which takes a string and a string list. Return NONE if the
string is not in the list, else return SOME lst where lst is identical to the argument list except the string
is not in it. You may assume the string is in the list at most once. Use same_string, provided to you,
to compare strings. Sample solution is around 8 lines.
*)

fun same_string (s1: string, s2: string) = s1 = s2;

fun all_except_option (str: string, xs: string list) =
  let
    fun build_list (xs: string list) =
      case xs of
        [] => []
      | x::xs' => 
        if str = x 
        then build_list(xs') 
        else x::build_list(xs');

    val result_list = build_list xs
  in
    if length result_list = length xs
    then NONE
    else SOME result_list
  end;
