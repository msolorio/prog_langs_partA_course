

(* fun len xs =
  case xs of
    [] => 0
    | x::xs' => 1 + len xs'; *)

(* We can remove the parameter x bc it isn't used  *)
fun len xs =
  case xs of
    [] => 0
    | _::xs' => 1 + len xs';

len [1, 2, 3];

(* 
len [1, 2] =
  => 1 + len [2]

  => 1 + (1 + len [])

  => 1 + (1 + (0))

  => 2

 *)

(* Multiple case function binding *)
(* fun append ([], ys) = ys
  | append (x::xs', ys) = x::append(xs', ys); *)


fun append([], ys) = ys
  | append(xs, ys) =
    let
      val x::xs' = xs (* warning: binding non exhaustive *)
    in
      x::append(xs', ys)
    end;

append([1, 2, 3], [4]);


(* Reverse a list *)
fun rev lst =
  let
    fun aux(lst, acc) =
      case lst of
        [] => acc
        | x::xs => aux(xs, x::acc)
  in
    aux(lst, [])
  end;



(* rev [1, 2, 3]

original list - [1, 2, 3]
new list - []

original list - [2, 3]
new list - [1]

original list - [3]
new list - [2, 1]

original list - []
new list - [3, 2, 1]
*)
