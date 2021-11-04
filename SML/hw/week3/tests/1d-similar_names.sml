val test_full_name1a = {
  first = "Fred",
  last = "Smith",
  middle = "M"
};

val test_full_name1b = {
  first = "Barb",
  last = "Rodriguez",
  middle = "Z"
};

val test_full_name1c = {
  first = "Zoey",
  last = "Rodriguez",
  middle = "Z"
};

val full_subs1 = [
  ["Fred", "F", "Freddie"],
  ["Barb", "Barbara", "B"],
  ["Fredrick", "Fred"]
];


val test1 = build_names(["Fred", "F", "Freddie"], test_full_name1a) = [
  {first="Fred",last="Smith",middle="M"},
  {first="F",last="Smith",middle="M"},
  {first="Freddie",last="Smith",middle="M"}
];

val test2 = similar_names(full_subs1, test_full_name1a) = [
  {first="Fred",last="Smith",middle="M"},
  {first="F",last="Smith",middle="M"},
  {first="Freddie",last="Smith",middle="M"},
  {first="Fredrick",last="Smith",middle="M"},
  {first="Fred",last="Smith",middle="M"}
];

val test3 = similar_names(full_subs1, test_full_name1b) = [
  {first="Barb",last="Rodriguez",middle="Z"},
  {first="Barbara",last="Rodriguez",middle="Z"},
  {first="B",last="Rodriguez",middle="Z"}
];

val test4 = similar_names(full_subs1, test_full_name1c) = [];
