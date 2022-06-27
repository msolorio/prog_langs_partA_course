(* LISTS AND OPTIONS ARE DATATYPES *)

(* datatype my_int_list = Empty
                    | Cons of int * my_int_list *)

(* val list = Cons (4, Empty); *)

(* val list = Cons (4, Cons (5, Empty)) *)

(* fun append_my_list (xs, ys) =
  case xs of
    Empty => ys
  | Cons (x, xs') => Cons (x, append_my_list (xs', ys)); *)

(* ************************************************************ *)
(* OPTIONS *)

(* fun inc_or_zero intoption =
  case intoption of
    NONE    => 0
  | SOME i  => i + 1;

val val1 = SOME 12;

inc_or_zero (val1); *)

(* ************************************************************ *)
(* Lists *)

(* fun sum_list xs =
  case xs of
    [] => 0
  | x::xs' => x + sum_list xs';

sum_list [1, 2, 3]; *)

(* ************************************************************ *)

fun append(xs, ys) =
  case xs of
    [] => ys
    | x::xs' => x::append(xs', ys);




val list1 = [1, 2];
val list2 = [7];

append (list1, list2);

(* fun append ([1, 2], [7]) =
  case xs of
    []      => ys
  | 1::[2]  => 1 :: append([2], [7])

fun append ([2], [7]) =
  case xs of
    []      => ys
  | 2::[]  => 2 :: append([], [7])

fun append ([], [7]) =
  case xs of
    []      => [7]
*)

(* 1::2::[7]; *)

(* *********************************************************** *)

(* datatype 'a option = NONE | SOME of 'a;

datatype 'a mylist = Empty | Cons of 'a * 'a mylist;

(* fn: int list --> int *)
fun sum_list xs =
  case xs of
    [] => 0
  | x::xs' => x + sum_list xs';

fun append (xs, ys) =
  case xs of
    [] => ys
  | x::xs' => x::append(xs', ys);

val list1 = [1,2,3];
val list2 = [7,8,9];

append(list1, list2); *)

(* ********************************************************* *)
(* BINARY TREE *)

(* datatype ('a, 'b) tree = Node of 'a * ('a, 'b) tree * ('a, 'b) tree
                      | Leaf of 'b;

(* Sum all nodes and leaves of a tree *)
(* fn: (int * int) tree --> int *)
fun sum_tree tr =
  case tr of
    Leaf i => i
  | Node (i, lft, rgt) => i + sum_tree lft + sum_tree rgt;


(* Sum leaves of a tree *)
(* fn: ('a * int) tree --> int *)
fun sum_leaves tr =
  case tr of
    Leaf i => i
  | Node (i, lft, rgt) => sum_leaves lft + sum_leaves rgt;


val node1 = Node (2, Leaf 1, Leaf 1);

val node2 = Node (2, Node (2, Leaf 1, Leaf 1), Leaf 1);

(* sum_leaves node1; *)

(* sum_leaves node2; *)
(* sum_tree node2; *)

(* fn: ('a, 'b) --> int *)
fun count_leaves tr =
  case tr of
    Leaf i => 1
  | Node (i, lft, rgt) => count_leaves lft + count_leaves rgt;


fun count_points tr =
  case tr of
    Leaf i => 1
  | Node (i, lft, rgt) => 1 + count_points lft + count_points rgt; *)

(* count_leaves node1; *)
(* count_leaves node2; *)
(* count_points node1; *)
(* count_points node2; *)
