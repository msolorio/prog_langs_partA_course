(* 
POLYMORPHIC DATATYPES

SML gives programmer option to create custom datatypes
- list and option are examples of datatypes that take arguments
- ie. string list is the datatype

The binding introduces a type constructor not a type
 *)

datatype 'a option = NONE | SOME of 'a;

datatype 'a list = Empty | Cons of 'a * 'a list

(* 
- All Nodes can carry data of type 'a
- All Leaves can carry data of type 'b
- Each Node knows its 'a value, and 2 child ('a, 'b) trees.
 *)
datatype ('a, 'b) tree =
  Node of 'a * ('a, 'b) tree * ('a, 'b) tree | Leaf of 'b;

