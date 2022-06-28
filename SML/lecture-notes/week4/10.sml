(* COMBINING FUNCTIONS *)

(* Using the pipeline operator *)
infix |>
fun x |> f = f x

(* Pipeline operator allows for reading composed functions from left to right *)

(* fun sqrt_of_abs i = i |> abs |> Real.fromInt |> Math.sqrt *)
(* take i, get absolute value, convert to real num, get sqrt *)

