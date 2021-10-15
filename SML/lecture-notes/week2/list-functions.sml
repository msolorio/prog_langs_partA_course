(* Function that takes an int and constructs a list counting down from that int *)
(* fun countdown (num : int) =
  if num = 0
  then []
  else num::countdown(num - 1);

countdown (3); *)

(* Takes 2 lists and appends the second to the first *)

(* int list * int list --> int list *)
fun append(list1 : int list, list2 : int list) =
  if null list1
  then list2
  else hd(list1)::append(tl(list1), list2);


(* append([1, 2], [3, 4]); *)

val my_list = [1,2,3];

fun sum (nums: int list) =
  if null nums
  then 0
  else hd(nums) + sum (tl nums);

sum(my_list)
