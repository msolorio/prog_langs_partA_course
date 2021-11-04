val subs1 = [
  ["Fred", "Fredrick"],
  ["Jeff", "Jeffrey"],
  ["Geoff", "Jeff", "Jeffrey"]
];

val name1 = "Jeff";


val subs2 = [
  ["Sam", "Samantha", "Sammy"],
  ["Stu", "Stewart", "Stewy"]
]

val name2 = "Victor";

val test1 = get_substitutions2(subs1, name1) = ["Jeffrey", "Geoff", "Jeffrey"];
val test2 = get_substitutions2(subs2, name2) = [];
