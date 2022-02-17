main() {
  // 无返回值
  void log() {
    print("==========log===========");
  }

  log();

  // 有返回值，有参数，
  // 可选参数：用[]包裹
  String getInfo(name, age, [gender]) {
    return "姓名：$name，年龄：$age，性别：${gender == 0 ? "男" : gender == 1 ? "女" : "不详"}";
  }

  // 命名参数：用{}包裹
  // 使用时无先后顺序
  String getInfo2(name, {age = 10, gender = 0, Function? fn, Function? fn2}) {
    fn?.call();
    fn2?.call();
    return "姓名：$name，年龄：$age，性别：${gender == 0 ? "男" : gender == 1 ? "女" : "不详"}";
  }

  print(getInfo("aaa", 10, 0));
  print(getInfo("bb", 10));
  print(getInfo2(
    "cc",
    age: 22,
    fn: () => print('callback'),
    fn2: () {
      final a = "fn2";
      print("callback $a");
    },
  ));

  log();

  // 异步

  bar() async {
    print("bar E");
    return "hello";
  }

  foo() async {
    print("foo E");
    String b = await bar();
    print("foo X $b");
  }

  foo();
  log();
}
