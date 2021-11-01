val test1 = all_except_option("b", ["a", "b", "c"]) = SOME ["a", "c"];

val test2 = all_except_option("a", ["a", "b", "c"]) = SOME ["b", "c"];

val test3 = all_except_option("c", ["a", "b", "c"]) = SOME ["a", "b"];
