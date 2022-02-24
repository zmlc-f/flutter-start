main() {
  Map mapA = {"name": "aaa"};
  mapA["age"] = 40;
  // print(mapA["name"]);
  // print(mapA.isEmpty);
  mapA.remove("name");
  mapA.addAll({2: "hhh"});
  print(mapA.containsValue(4));

  int? i;
  print(i * 8);
}
