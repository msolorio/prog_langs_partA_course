(* val my_list = []; *)

(* val my_list = [7, 8, 9]; *)

(* val my_list = [1 + 1, 2 + 3, 4]; *)

(* val a = 10;
val b = 5; *)

(* val my_list = [a, b, 5]; *)

(* will not compile, all items in list must be of the same type *)
(* val my_list = [1, 2, true]; *)

(* cons operator - prepend to a list *)
val my_list = [1, 2, 3];

(* Prepent 0 to my_list *)
(* val new_list = 0::my_list; *)

(* multiple prepends *)
(* val new_list = ~1::0::my_list; *)

(* Check if a list is empty *)
(* null my_list;

null []; *)

(* `a list --> `a *)
(* val first = hd my_list; *)

(* will error - can't get first item of empty array *)
(* val first = hd []; *)

(* tail `a list --> `a list *)
(* val lasts = tl my_list; *)

val pairs = [(0,0), (0, 1), (2, 2)];
(* hd pairs; *)
val updated_pairs = (1, 0)::pairs;

(* - [];
val it = [] : 'a list
- [3,4,5];
val it = [3,4,5] : int list
- [4,3];
val it = [4,3] : int list
- [3,4,5,6];
val it = [3,4,5,6] : int list
- [(1+2),3+4,7];
val it = [3,7,7] : int list
- [true,false,true];
val it = [true,false,true] : bool list
- [3,4+5,true];
stdIn:7.1-7.13 Error: operator and operand don't agree [literal]
  operator domain: int * int list
  operand:         int * bool list
  in expression:
    4 + 5 :: true :: nil
- 4+true;
stdIn:1.2-2.3 Error: operator and operand don't agree [literal]
  operator domain: int * int
  operand:         int * bool
  in expression:
    4 + true
- val x = [7,8,9];
val x = [7,8,9] : int list
- x;
val it = [7,8,9] : int list
- 5::x;
val it = [5,7,8,9] : int list
- 6::5::x;
val it = [6,5,7,8,9] : int list
- [6]::x;
stdIn:11.1-11.7 Error: operator and operand don't agree [tycon mismatch]
  operator domain: int list * int list list
  operand:         int list * int list
  in expression:
    (6 :: nil) :: x
- 6::x;
val it = [6,7,8,9] : int list
- [6]::[[7,5],[5,2]];
val it = [[6],[7,5],[5,2]] : int list list
- null x;
val it = false : bool
- x;
val it = [7,8,9] : int list
- null [];
val it = true : bool
- val y = [];
val y = [] : 'a list
- null y;
val it = true : bool
- hd x;
val it = 7 : int
- x;
val it = [7,8,9] : int list
- tl x;
val it = [8,9] : int list
- hd (tl x);
val it = 8 : int
- tl (tl x);
val it = [9] : int list
- tl (tl (tl x));
val it = [] : int list
- tl (tl (tl (tl x)));

uncaught exception Empty
  raised at: smlnj/init/pervasive.sml:211.19-211.24
- hd (tl (tl (tl x)));

uncaught exception Empty
  raised at: smlnj/init/pervasive.sml:209.19-209.24
- [(3,4),(5,6)];
val it = [(3,4),(5,6)] : (int * int) list
- 3::it;
stdIn:25.1-25.6 Error: operator and operand don't agree [literal]
  operator domain: int * int list
  operand:         int * (int * int) list
  in expression:
    3 :: it
- (1,2)::it;
val it = [(1,2),(3,4),(5,6)] : (int * int) list
- [];
val it = [] : 'a list
- 3::[];
val it = [3] : int list
- true::[];
val it = [true] : bool list
- null;
val it = fn : 'a list -> bool
- null [3,4];
val it = false : bool
- null [true,false];
val it = false : bool
- hd;
val it = fn : 'a list -> 'a
- hd [3,4];
val it = 3 : int
- hd [true,false];
val it = true : bool
- tl;
val it = fn : 'a list -> 'a list
- tl [3,4];
val it = [4] : int list *)
