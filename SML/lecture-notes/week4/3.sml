(* ANONYMOUS FUNCTIONS *)

fun n_times (f, n, x) =
  if n = 0
  then x
  else f(n_times(f, n - 1, x));


fun triple_n_times (n, x) =
  let
    fun triple x = x * 3
  in
    n_times(triple, n, x)
  end;


(* triple_n_times(1, 1); *)
(* => 3 *)

(* triple_n_times(2, 1); *)
(* => 9 *)

(* ***************************************************** *)
(* Using an Anonymous Function defining triple in place *)
fun triple_n_times2 (n, x) =
  n_times((fn y => y * 3), n, x);

