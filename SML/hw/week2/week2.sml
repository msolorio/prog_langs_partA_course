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

(* 
8.
Write a function number_before_reaching_sum that takes an int called sum, which you can assume
is positive, and an int list, which you can assume contains all positive numbers, and returns an int.
You should return an int n such that the first n elements of the list add to less than sum, but the first
n + 1 elements of the list add to sum or more. Assume the entire list sums to more than the passed in
value; it is okay for an exception to occur if this is not the case.
 *)

fun append_int_lists (int_list1: int list, int_list2: int list) =
  if null int_list1
  then int_list2
  else (hd int_list1)::append_int_lists(tl int_list1, int_list2);


fun add_to_back (num: int, int_list: int list) =
  let
    val single_item_list = num::[]
  in
    if null int_list
    then single_item_list
    else append_int_lists(int_list, single_item_list)
  end;


fun reverse_list (int_list: int list) =
  if null int_list
  then []
  else
    let
      val hd_item_list = (hd int_list)::[]
    in
      append_int_lists(reverse_list(tl int_list), hd_item_list)
    end;

  
(* [1, 2] *)

(* add_to_back(1, [2, 3, 4]); *)

(* 4, [1, 2, 3] *)

fun sum_nums (list: int list) =
  if null list
  then 0
  else (hd list) + sum_nums(tl list)


fun number_before_reaching_sum (sum: int, list: int list) =
  let
    val reversed = reverse_list(list);

    (* conditionally adds item to list if existing added items sum under given sum *)
    fun add_item(list: int list) =
      if null list
      then []
      else
        if sum_nums(list) >= sum
        then add_item(tl list)
        else (hd list)::add_item(tl list)

    val nums_under_sum = reverse_list(add_item(reversed))
  in
    length (nums_under_sum)
  end;

(* 
9.
Write a function what_month that takes a day of year (i.e., an int between 1 and 365) and returns
what month that day is in (1 for January, 2 for February, etc.). Use a list holding 12 integers and your
answer to the previous problem.
 *)


fun what_month (day: int) =
  let
    val month_ints = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  in
    (number_before_reaching_sum(day, month_ints)) + 1
  end;

(* 
10
Write a function month_range that takes two days of the year day1 and day2 and returns an int list
[m1,m2,...,mn] where m1 is the month of day1, m2 is the month of day1+1, ..., and mn is the month
of day day2. Note the result will have length day2 - day1 + 1 or length 0 if day1>day2.
 *)

(* 
example
(1, 32) => [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2]

example
(1, 2)
 *)

(* fun get_target_len (day1: int, day2: int) =
  if day2 - day1 + 1 < 0
  then 0
  else day2 - day1 + 1; *)

fun month_range(day1: int, day2: int) =
  let
    fun build_list(current_day: int) =
      if current_day <= day2
      then what_month(current_day)::build_list(current_day + 1)
      else []
  in 
    build_list(day1)
  end;
