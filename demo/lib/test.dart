void main(List<String> args) {
  var s = ":name=123";
  String key = "name";
  s = s.replaceAll(":$key", "ww");
  print(s);
}
