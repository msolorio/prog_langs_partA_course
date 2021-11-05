(* 
2. starter code
 *)

datatype suit = Club | Diamond | Hearts | Spades;
datatype rank = Jack | Queen | King | Ace | Num of int;
type card = suit * rank;
datatype color = Red | Black;
datatype move = Discard of card | Draw;
exception IllegalMove;

(* fun remove_card(cs: card list, c: card, e: IllegalMove) =
  5; *)
