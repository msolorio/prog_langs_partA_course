(* a record *)
val person = {
  name = "Amelia",
  id = 41111
};

(* We access fields on a record using the hash of the field name, similar to accessing fields on a tuple *)
(#name person);

(* Tuples are syntactic sugar for writing a record with keys 1, 2, 3, etc... *)

(* creating a record like so is actually the same as the tuple, ("a", "b", "c") *)
val some_nums = {
  1 = "a",
  2 = "b",
  3 = "c"
};
(*

would create
("a", "b", "c")

*)

(* We would access the field for a record the same way we access fields on a tuple *)
(#2 some_nums)
