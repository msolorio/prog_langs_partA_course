val test1 = get_nth(["a", "b", "c", "d", "e"], 1) = "a";

val test2 = get_nth(["a", "b", "c", "d", "e"], 3) = "c";

val test3 = get_nth(["a", "b", "c", "d", "e"], 5) = "e";

val test4 = get_nth(["a"], 1) = "a";

val test5 = get_nth(["a"], 5) = "not found";