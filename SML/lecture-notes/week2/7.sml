(* 

LISTS 

LIST
- A collection with a variable length
- All items in a list must have the same type
- read and write
- can perform all CRUD operations on list

EMPTY LIST
[]

[3, 4, 5] --> int list

CONS OPERATOR
e1::e2

e1 is a single element of type t

e2 is a list of type t list

e1::e2 places e1 at the front of list

5::[1, 2, 3] ==> [5, 1, 2, 3]

NULL FUNCTION

null(e)

returns true if list e is emply, false otherwise

HEAD FUNCTION
Returns the first item in a list

hd([1, 2, 3]) ==> 1

TAIL FUNCTION
Returns a new list with all items except the first

tl([1, 2, 3]) ==> [2, 3]

tl([1]) ==> []

tl([]) ==> runtime exception

TYPES OF LISTS

[(3,4), (5,6)] -> int*int list

*)


