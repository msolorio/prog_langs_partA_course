val cards1 = [
  (Club, Jack),
  (Diamond, Queen),
  (Hearts, King),
  (Spades, Ace)
];

val cards2 = [
  (Club, Num 2),
  (Diamond, Num 3),
  (Hearts, Num 4),
  (Spades, Num 5)
];

val cards3 = [
  (Club, Ace),
  (Diamond, Num 3),
  (Hearts, King),
  (Spades, Queen)
];

val test1 = sum_cards(cards1) = 41;
val test2 = sum_cards(cards2) = 14;
val test3 = sum_cards(cards3) = 34;
