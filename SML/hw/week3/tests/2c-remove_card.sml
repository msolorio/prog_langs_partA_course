val card1 = (Diamond, King);
val card2 = (Club, Jack);
val card3 = (Diamond, King);
val card4 = (Diamond, Queen);
val card5 = (Diamond, King);

val test1 = remove_card([card1, card2], (Club, Jack)) = [(Diamond, King)];
val test2 = remove_card([card1, card2], (Diamond, King)) = [(Club, Jack)];
val test3 = remove_card([card1, card2, card3], (Club, Jack)) = [(Diamond, King), (Diamond, King)];
val test4 = remove_card([card1, card2, card3, card4, card5], (Diamond, King)) = [
  (Club, Jack),
  (Diamond, King),
  (Diamond, Queen),
  (Diamond, King)
];