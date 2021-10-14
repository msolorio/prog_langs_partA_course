val test1 = number_in_month(
  [
    (1,1,1),
    (1,2,2),
    (1,1,1),
    (1,2,3)
  ],
  1
) = 2;

val test2 = number_in_month(
  [
    (1,1,1),
    (1,2,2),
    (1,1,1)
  ],
  1
) = 2;

val test3 = number_in_month(
  [
    (1,2,1),
    (1,2,2),
    (1,1,1)
  ],
  1
) = 1;