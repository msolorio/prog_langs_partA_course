(* ************************************************************************************** *)
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

(* ************************************************************************************** *)
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


(* ************************************************************************************** *)
(* 
1c.
Write a function get_substitutions2, which is like get_substitutions1 except it uses a tail-recursive
local helper function.
 *)

fun get_substitutions2(substitutions: string list list, s: string) =
  let
    fun build_list(substitutions: string list list) =
      case substitutions of
        [] => []
      | x::xs' =>
        let
          val result = all_except (s, x);
          val result_length = length result;
        in
          if result_length = length x
          then build_list xs'
          else append_list(result, build_list xs')
        end;
  in 
    build_list(substitutions)
  end;


(* ************************************************************************************** *)
(* 
1d.
Write a function similar_names, which takes a string list list of substitutions (as in parts (b) and
(c)) and a full name of type {first:string,middle:string,last:string} and returns a list of full
names (type {first:string,middle:string,last:string} list). The result is all the full names you
can produce by substituting for the first name (and only the first name) using substitutions and parts (b)
or (c). The answer should begin with the original name (then have 0 or more other names). Example:

given:
similar_names(
  [
    ["Fred","Fredrick"],
    ["Elizabeth","Betty"],
    ["Freddie","Fred","F"]
  ],
  {first="Fred", middle="W", last="Smith"}
)

returns:
[{first="Fred", last="Smith", middle="W"},
{first="Fredrick", last="Smith", middle="W"},
{first="Freddie", last="Smith", middle="W"},
{first="F", last="Smith", middle="W"}]

Do not eliminate duplicates from the answer. Hint: Use a local helper function. Sample solution is
around 10 lines.
 *)

(* Helper - builds a list of full names from a single list of subs *)
fun build_names(
  subs: string list,
  { first=first, last=last, middle=middle }
) =
  case subs of
    [] => []
  | x::xs' =>
    let
      val new_full_name = {
        first=x,
        last=(last),
        middle=(middle)
      }
    in
      new_full_name::build_names(xs', { first=first, last=last, middle=middle })
    end;

(* Helper - appends 2 lists, returns single list *)
fun append_name_list(
  (* xs: { first: string, last: string, middle: string } list,
  ys: { first: string, last: string, middle: string } list *)
  xs,
  ys
) =
  case xs of
    [] => ys
    | x::xs' => x::append_name_list(xs', ys);

(* Solution function *)
fun similar_names(
  subs: string list list,
  full_name: { first: string, last: string, middle: string }
) =
  case subs of
    [] => []
  | x::xs' =>
    if length (all_except (#first full_name, x)) = length x
    then similar_names(xs', full_name)
    else append_name_list(
      build_names(x, full_name),
      similar_names(xs', full_name)
    );

datatype suit = Club | Diamond | Hearts | Spades;
datatype rank = Jack | Queen | King | Ace | Num of int;
type card = suit * rank;
datatype color = Red | Black;
datatype move = Discard of card | Draw;
exception IllegalMove;

(* ************************************************************************************** *)
(* 
2a.
Write a function card_color, which takes a card and returns its color (spades and clubs are black,
diamonds and hearts are red). Note: One case-expression is enough.
*)
fun card_color(suit, rank) =
  case (suit) of
    Club    => Black
  | Spades  => Black
  | _       => Red;


(* ************************************************************************************** *)
(* 
2b.
Write a function card_value, which takes a card and returns its value (numbered cards have their
number as the value, aces are 11, everything else is 10). Note: One case-expression is enough.
*)
fun card_value(suit, rank) =
  case rank of
    Num i => i
  | Ace   => 11
  | _     => 10

(* ************************************************************************************** *)
(* 
2c.
Write a function remove_card, which takes a list of cards cs, a card c, and an exception e. It returns a
list that has all the elements of cs except c. If c is in the list more than once, remove only the first one.
If c is not in the list, raise the exception e. You can compare cards with =.
*)

fun remove_card(cs, c) =
  case cs of
    []     => []
  | x::xs' => 
    if (x = c)
    then xs'
    else x::remove_card(xs', c);

(* ************************************************************************************** *)
(* 
2d.
Write a function all_same_color, which takes a list of cards and returns true if all the cards in the
list are the same color. Hint: An elegant solution is very similar to one of the functions using nested
pattern-matching in the lectures.
*)

(* fun all_same_color(cards: card list) = *)

(* ************************************************************************************** *)
(* 
2e.
Write a function sum_cards that will sum the value of all cards in a list
 *)
fun sum_cards(cards) =
  case cards of
    [] => 0
  | x::xs' => card_value(x) + sum_cards(xs');

