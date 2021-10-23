(* 
1.
In all problems, a “date” is an SML value of type int*int*int, where the first part is the year, the second part is the month, and the third part is the day. A “reasonable” date has a positive year, a month between 1 and 12, and a day no greater than 31 (or less depending on the month).

Write a function is_older that takes two dates and evaluates to true or false. It evaluates to true if
the first argument is a date that comes before the second argument. (If the two dates are the same,
the result is false.)

(2021, 10, 17)
(2021, 10, 16)

 *)
fun is_older ((date1: int*int*int), (date2: int*int*int)) =
  let
    val year1 = #1 date1;
    val year2 = #1 date2;
    val month1 = #2 date1;
    val month2 = #2 date2;
    val day1 = #3 date1;
    val day2 = #3 date2;
  in
    if (year1 = year2)
    then
      if (month1 = month2)
      then (day1 < day2)
      else (month1 < month2)
    else (year1 < year2)
  end

(* ***************************************************************** *)
(*
2. 
Write a function number_in_month that takes a list of dates and a month (i.e., an int) and returns
how many dates in the list are in the given month.

(2021, 10, 17)
(2021, 10, 16)
(2021, 9, 16)

10
 *)
(* fun number_in_month (dates: (int*int*int) list, month: int) = *)

fun number_in_month (dates: (int*int*int) list, month: int) =
  let
    fun add_to_list (dates: (int*int*int) list) =
      if null(tl dates) andalso (not (#2 (hd dates) = month))
      then []
      else if null(tl dates) andalso (#2 (hd dates)) = month
      then (hd dates)::[]
      else if (#2 (hd dates)) = month
      then (hd dates)::add_to_list(tl dates)
      else add_to_list(tl dates)

    val new_list = add_to_list(dates)
  in 
    length new_list
  end

(* **************************************************************** *)
(* 
3.
Write a function number_in_months that takes a list of dates and a list of months (i.e., an int list)
and returns the number of dates in the list of dates that are in any of the months in the list of months.
Assume the list of months has no number repeated. Hint: Use your answer to the previous problem.
 *)

fun number_in_months (dates: (int*int*int) list, months: int list) =
  if null months
  then 0
  else number_in_month(dates, hd(months)) + number_in_months(dates, tl months);

(* *********************************************************************************** *)
(* 
4.
Write a function dates_in_month that takes a list of dates and a month (i.e., an int) and returns a
list holding the dates from the argument list of dates that are in the month. The returned list should
contain dates in the order they were originally given.
 *)

fun dates_in_month (dates: (int*int*int) list, month: int) =
  if null(dates)
  then []
  else if (#2 (hd dates) = month)
  then (hd dates)::dates_in_month(tl dates, month)
  else dates_in_month(tl dates, month);


(* *********************************************************************************** *)
(* 5.
Write a function dates_in_months that takes a list of dates and a list of months (i.e., an int list)
and returns a list holding the dates from the argument list of dates that are in any of the months in
the list of months. Assume the list of months has no number repeated. Hint: Use your answer to the
previous problem and SML’s list-append operator (@).
*)
fun append(dates1: (int*int*int) list, dates2: (int*int*int) list) =
  if null dates1
  then dates2
  else (hd dates1)::append(tl dates1, dates2);


fun dates_in_months (dates: (int*int*int) list, months: int list) =
  if null months
  then []
  else append(dates_in_month(dates, hd months), dates_in_months(dates, tl months));


(* Appends 2 lists together *)
(* fun append2 (str_list1: string list, str_list2: string list) =
  if null str_list1
  then str_list2
  else (hd str_list1)::append2(tl str_list1, str_list2) *)

(* ************************************************************************************** *)

(* Copies one list into another list recursively *)

(* fun clone_list (str_list: string list) =
  let
    val new_list: string list = []

    fun add_item (str_list: string list, new_list: string list) =
      if null str_list
      then new_list
      else (hd str_list)::add_item(tl str_list, new_list)

  in 
    add_item(str_list, new_list)

  end *)


(*
6. 
Write a function get_nth that takes a list of strings and an int n and returns the nth element of the
list where the head of the list is 1st. Do not worry about the case where the list has too few elements:
your function may apply hd or tl to the empty list in this case, which is okay
 *)

fun get_last_item (str_list: string list) =
  if null str_list
  then "not found"
  else if null (tl str_list)
  then hd str_list
  else get_last_item(tl str_list)


fun get_nth (str_list: string list, n: int) =
  let
    val list_len = length str_list

    fun add_item (str_list: string list) =
      if null str_list
      then []
      else if list_len - n + 1 = length str_list
      then (hd str_list)::[]
      else if length str_list >= n
      then (hd str_list)::add_item(tl str_list)
      else []

    val new_list = add_item(str_list)
  in 
    get_last_item(new_list)
  end;

(* 
7.
Write a function date_to_string that takes a date and returns a string of the form January 20, 2013
(for example). Use the operator ^ for concatenating strings and the library function Int.toString
for converting an int to a string. For producing the month part, do not use a bunch of conditionals.
Instead, use a list holding 12 strings and your answer to the previous problem. For consistency, put a
comma following the day and use capitalized English month names: January, February, March, April,
May, June, July, August, September, October, November, December.
 *)

(* Concatenate 2 strings *)
"string1" ^ "string2";

(* converts Int to String *)
Int.toString 120;

fun date_to_string ((date: int*int*int)) =
  let
    val months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];

    val year = Int.toString (#1 date);
    val month = get_nth(months, (#2 date));
    val day = Int.toString (#3 date);
  in
    month ^ " " ^ day ^ ", " ^ year
  end;

date_to_string((2013, 01, 20));
