(* 
In all problems, a “date” is an SML value of type int*int*int, where the first part is the year, the second part is the month, and the third part is the day. A “reasonable” date has a positive year, a month between 1 and 12, and a day no greater than 31 (or less depending on the month).

Write a function is_older that takes two dates and evaluates to true or false. It evaluates to true if
the first argument is a date that comes before the second argument. (If the two dates are the same,
the result is false.)

 *)

(* fun check_month ((date1: int*int*int), (date2: int*int*int)) =
  if #2 date1 = # *)



(* fun is_older ((date1: int*int*int), (date2: int*int*int)) =
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
  end *)

(* ***************************************************************** *)
(* 
Write a function number_in_month that takes a list of dates and a month (i.e., an int) and returns
how many dates in the list are in the given month.
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
