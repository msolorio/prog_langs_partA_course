(* Higher Order functions for custom data structures *)

datatype exp = Constant of int
              | Negate of exp
              | Add of exp * exp
              | Multiply of exp * exp;


fun is_even v =
  v mod 2 = 0;

(* Checks if all constants meet condition of provided function *)
(* The constants are the leaves of the expression where a true or false is returned *)
fun true_of_all_constants(f, e) =
  case e of
    Constant i       => f i
  | Negate e1         => true_of_all_constants(f, e1)
  | Add(e1, e2)       => true_of_all_constants(f, e1) andalso true_of_all_constants(f, e2)
  | Multiply(e1, e2)  => true_of_all_constants(f, e1) andalso true_of_all_constants(f, e2);


fun all_constants_even e =
  true_of_all_constants(is_even, e);


val exp1 = Add(Negate (Constant 15), Constant 12);


all_constants_even exp1;
