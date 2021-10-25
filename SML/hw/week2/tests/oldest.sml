val test1  = oldest([(2021, 1, 1), (2021, 1, 2)]) = SOME (2021, 1, 1);

val test2 = oldest([(0, 1, 1), (2021, 1, 1)]) = SOME (0, 1, 1);

val test3 = oldest([]) = NONE;
