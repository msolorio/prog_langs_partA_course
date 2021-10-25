val test1 = is_older ((2000,1,1), (2001,1,1)) = true;

val test2 = is_older ((2001,1,1), (2000,1,1)) = false;

val test3 = is_older ((2000,1,1), (2000,2,1)) = true;

val test4 = is_older ((2000,2,1), (2000,1,1)) = false;

val test5 = is_older ((2000,1,1), (2000,1,2)) = true;

val test6 = is_older ((2000,1,2), (2000,1,1)) = false;

val test7 = is_older ((2000,1,1), (2000,1,1)) = false;