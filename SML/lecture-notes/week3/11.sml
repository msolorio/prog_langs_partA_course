(* 
EACH OF PATTERN MATCHING
TRUTH ABOUT FUNCTIONS
 *)

(* fn: (int*int*int) => int *)

(* Poor style because there is only 1 case *)
(* fun sum_triple triple =
  case triple of
    (x, y, z) => x + y + z
  
fun full_name r =
  case r of
    { first=x, middle=y, last=z } => x ^ " " ^ y ^ " " ^ z; *)

(* full_name ({ first="Pat", middle="R", last="Lawsome" }); *)

(* We can instead use object destructuring *)
fun full_name (r: {first: string, middle: string, last: string}) =
  let
    val { first=x, middle=y, last=z } = r
  in
    x ^ " " ^ y ^ " " ^ z
  end;

(* ***************************************************************** *)
(* 
val bindings
val var_name = expression

val pattern = expression
*)

fun sum_triple2 triple =
  let
    val (x, y, z) = triple;
  in
    x + y + z
  end;

(* sum_triple2 (1, 2, 3); *)

fun full_name2 r =
  let
    val { first=x, middle=y, last=z } = r 
  in
    x ^ " " ^ y ^ " " ^ z
  end;

full_name2 {first="Monica", middle="T", last="Greene"};

(* **************************************************************** *)
(* 
Function parameters are patterns that must be matched when calling 
the function

fun function_name pattern = expression

fun f p = e
 *)

fun sum_triple3 (x, y, z) =
  x + y + z;

(* sum_triple3(1, 2, 3); *)

fun full_name3 { first=x, middle=y, last=z } =
  x ^ " " ^ y ^ " " ^ z;

(* full_name3 { first="Roger", middle="D", last="Whittiker" }; *)

(* 
EVERY FUNCTION TAKES EXACTLY ONE ARGUMENT THAT IS A TUPLE
THE ITEMS IN THE TUPLE ARE EXTRACTED USING PATTERN MATCHING
*)
