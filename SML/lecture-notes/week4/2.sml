(* TAKING FUNCTIONS AS ARGUMENTS *)

fun n_times(f, n, x) =
  if n = 0
  then x
  else f(n_times(f, n - 1, x));

fun double x = x + x;

(* n_times(double, 1, 1); *)
(* double(1) => 2 *)

(* n_times(double, 2, 1); *)
(* double(double(1)); => 4 *)

(* n_times(double, 3, 1); *)
(* double(double(double(1))) => 8 *)

(* ********************************************************* *)
fun increment x = x + 1;

(* n_times(increment, 1, 1); *)
(* increment(1) => 2 *)

n_times(increment, 2, 1);
(* increment(increment(1)) => 3 *)