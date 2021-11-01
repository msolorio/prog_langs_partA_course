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
        if same_string(str, x)
        then build_list(xs') 
        else x::build_list(xs');

    val result_list = build_list xs
  in
    if length result_list = length xs
    then NONE
    else SOME result_list
  end;

(* 
1b. get_substitutions1
Write a function get_substitutions1, which takes a string list list (a list of list of strings, the
substitutions) and a string s and returns a string list. The result has all the strings that are in
some list in substitutions that also has s, but s itself should not be in the result. Example:
get_substitutions1([["Fred","Fredrick"],["Elizabeth","Betty"],["Freddie","Fred","F"]],
"Fred")
(* answer: ["Fredrick","Freddie","F"] *)
Assume each list in substitutions has no repeats. The result will have repeats if s and another string are
both in more than one list in substitutions. Example:
get_substitutions1([["Fred","Fredrick"],["Jeff","Jeffrey"],["Geoff","Jeff","Jeffrey"]],
"Jeff")
(* answer: ["Jeffrey","Geoff","Jeffrey"] *)
Use part (a) and ML’s list-append (@) but no other helper functions. Sample solution is around 6 lines.
 *)

(* Helper - returns new string list including all els except provided str *)
fun all_except (str: string, xs: string list) =
  let
    fun build_list (xs: string list) =
      case xs of
        [] => []
      | x::xs' => 
        if same_string (str, x)
        then build_list(xs') 
        else x::build_list(xs');

  in
    build_list xs
  end;

(* Helper - appends 2 lists, returns single list *)
fun append_list(xs: string list, ys: string list) =
  case xs of
    [] => ys
    | x::xs' => x::append_list(xs', ys);


fun get_substitutions1 (substitutions: string list list, s: string) =
  case substitutions of
    [] => []
  | x::xs' =>
    let
      val result = all_except (s, x);
      val result_length = length result;
    in
      if result_length = length x
      then get_substitutions1(xs', s)
      else append_list(result, get_substitutions1(xs', s))
    end;

