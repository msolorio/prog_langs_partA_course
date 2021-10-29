datatype mytype = TwoInts of int*int
                | Str of string
                | Pizza

fun f (x: mytype) =
  case x of
    Pizza => 3
  | Str s => 8
  | TwoInts(i1, i2) => i1 + i2;

f Pizza;
f (Str "my string");
f (TwoInts(1, 2));

(* 
general case expression

case e0 of
  p1 => e1
  p2 => e2
  p3 => e3

- e0 will attempt to match p1, p2, p3, etc...
- for the first case it matches, it will return the associated expression
 *)