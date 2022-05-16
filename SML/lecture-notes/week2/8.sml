(* LIST FUNCTIONS *)

(* 
NOTES
Functions over lists are usually recursive functions
- recursion is the only way to access all items in the list

Strategy
- What should return value be for empty list?
- how to compute the return value for non-empty list?
  - typically in terms of a recursive call passing in tail of list.

Function that produces a list is usually recursive also.
- creating a list out of smaller lists

*)

(* ******************************************* *)
(* EXAMPLE LIST FUNCTIONS *)

(* Function that takes an int and constructs a list counting down from that int *)
fun countdown (num : int) =
  if num = 0
  then []
  else num::countdown(num - 1);

(* countdown (2); *)

(*
Results in
2::1::[] ==> [2, 1]
*)

(* ******************************************* *)
(* return list counting from num to ten *)
fun count_to_ten(num: int) =
  if num = 10
  then [10]
  else num::count_to_ten(num + 1);

(* 8::9::10 ==> [8,9,10] *)
(* count_to_ten(7); *)

(* ******************************************* *)
(* Generate a copy of a list *)
fun copy_list(nums: int list) =
  if null(nums)
  then []
  else hd(nums)::copy_list(tl(nums));


(* copy_list([1, 2, 3]); *)

(* 1::2::3::[] ==> [1, 2, 3]; *)

(* ******************************************* *)
fun get_last_item(nums: int list) =
  if null(tl nums)
  then hd nums
  else get_last_item(tl nums);

(* get_last_item([1, 2, 3]); *)

(* ******************************************* *)
(* Takes 2 lists and appends the second to the first *)

(* int list * int list --> int list *)
fun append(list1 : int list, list2 : int list) =
  if null list1
  then list2
  else hd(list1)::append(tl(list1), list2);

(* append([1, 2], [3, 4]); *)

(* 
1::2::[3, 4] ==> [1, 2, 3, 4]
*)

val my_list = [1,2,3];

fun sum (nums: int list) =
  if null nums
  then 0
  else hd(nums) + sum (tl nums);

(* sum(my_list) *)

(* 
1 + 2 + 3 + 0 = 6
*)

(* 
Write a function that takes an int list and returns the product of all the nums in the list.

list_products [2, 3, 4] ==> 24
*)

fun list_products (nums: int list) =
  if null nums
  then 1
  else hd nums * list_products(tl nums);

(* 2 * 3 * 4 * 1 ==> 24 *)

(* list_products [2, 3, 4]; *)

(* 
function that sums all numbers in an (int*int) list

[(1, 2), (3, 4)] ==> 10

*)

fun sum_pairs(prs: (int*int) list) =
  if null prs
  then 0
  else # 1 (hd prs) + #2 (hd prs) + sum_pairs(tl prs);

(* 
sum_pairs [(1, 2), (3, 4)]

1 + 2 + 3 + 4 ==> 10
*)

(* sum_pairs([(1, 2), (3, 4)]); *)


(*
Returns first item of each pair in list of pairs

firsts([(1, 2), (3, 4)]) ==> [1, 3]

*)
fun firsts(prs: (int*int) list) =
  if null prs
  then []
  else #1 (hd prs)::firsts(tl prs);

(* 
1::3::[] ==> [1, 3]
*)

firsts([(1, 2), (3, 4)]);
