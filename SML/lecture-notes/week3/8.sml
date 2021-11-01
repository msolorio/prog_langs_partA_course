(* 
TYPE SYNONYMS
 *)

datatype suit = Club | Diamond | Heart | Spade

datatype rank = Jack | Queen | King | Ace | Num of int

type card = suit * rank

type name_record = {
  student_num: int option,
  first: string,
  middle: string option,
  last: string
}

fun is_queen_of_spades (c: card) =
  #1 c = Spade andalso #2 c = Queen

val c1: card = (Diamond, Ace)
val c2: suit * rank = (Heart, Ace)
val c3 = (Spade, Ace);
val c4: card = (Spade, Queen);

is_queen_of_spades (c1);
is_queen_of_spades (c2);
is_queen_of_spades (c3);

fun is_queen_of_spades2 c =
  case c of
    (Spade, Queen) => true
    | _ => false;

is_queen_of_spades2 (c1);

is_queen_of_spades2 (c4);
