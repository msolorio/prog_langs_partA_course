(* 
ANOTHER EXPRESSION
 *)

datatype exp = Constant of int
              | Negate of exp
              | Add of exp*exp
              | Multiply of exp*exp;

(* fun max_constant e =
  case e of
    Constant i => i
    | Negate e2 => max_constant e2
    | Add(e1, e2) => if max_constant e1 > max_constant e2
                    then max_constant e1
                    else max_constant e2
    | Multiply(e1, e2) => if max_constant e1 > max_constant e2
                          then max_constant e1
                          else max_constant e2; *)

(* fun max_constant e =
  case e of
    Constant i => i
    | Negate e1 => max_constant e1
    | Add (e1, e2) =>
      let 
        val m1 = max_constant e1
        val m2 = max_constant e2
      in
        if m1 > m2 then m1 else m2 end
    | Multiply (e1, e2) =>
      let
        val m1 = max_constant e1
        val m2 = max_constant e2
      in
        if m1 > m2 then m1 else m2 end *)

fun max_constant e =
  let
    fun max_of_two(e1, e2) =
      Int.max(max_constant e1, max_constant e2)
  in
    case e of
      Constant i => i
      | Negate e1 => max_constant e1
      | Add (e1, e2) => max_of_two(e1, e2)
      | Multiply (e1, e2) => max_of_two(e1, e2)
  end

val test_exp = Add (Constant 19, Negate (Constant 4));

max_constant (test_exp);

