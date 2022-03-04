import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: MyHomePage(title: "get demo"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final Counter c = Get.put(Counter());
    final IsDark isD = Get.put(IsDark());
    final UserData u = Get.put(UserData());

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text("go to page"),
              onPressed: () {
                Get.to(Other());
              },
            ),
            ElevatedButton(
              child: const Text("go to second page"),
              onPressed: () {
                Get.to(const SecondPage());
              },
            ),
            Obx(() => Text("count: ${c.count}")),
            // Text("count: ${c.count}"),
            ElevatedButton(
              onPressed: c.add,
              child: const Icon(Icons.add),
            ),
            Obx(() =>
                Text("name: ${u.user.value.name}, age: ${u.user.value.age}")),
            ElevatedButton(
              onPressed: () {
                // u.user(User(name: "qq", age: 20));
                u.user.update((User? user) {
                  if (user != null) {
                    user.name = "qq";
                    user.age = 30;
                  }
                });
              },
              child: const Text("add user"),
            ),
            GetBuilder<SimpleCount>(
              init: SimpleCount(),
              builder: (s) {
                return ElevatedButton(
                  onPressed: s.increment,
                  child: Text("simple count: ${s.count}"),
                );
              },
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: c.add,
      //   child: const Icon(Icons.add),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isD.change();
          Get.changeTheme(
            Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
          );
        },
        child: Obx(() => isD.isDark.value
            ? const Icon(Icons.light_mode)
            : const Icon(Icons.dark_mode)),
      ),
    );
  }
}

class Counter extends GetxController {
  var count = 0.obs;
  void add() => count++;
}

class IsDark extends GetxController {
  var isDark = false.obs;
  void change() => isDark.value = !isDark.value;
}

class UserData extends GetxController {
  var user = User().obs;
}

class User {
  User({this.name = "", this.age = 0});
  String name;
  int age;
}

class SimpleCount extends GetxController {
  static SimpleCount get to => Get.find();

  int count = 0;
  increment() {
    count++;
    update();
  }
}

class Other extends StatelessWidget {
  Other({Key? key}) : super(key: key);

  final Counter c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('new page'),
      ),
      body: Column(
        children: [
          Text("count: ${c.count}"),
          ElevatedButton(
            onPressed: SimpleCount.to.increment,
            child: const Text("simple count add"),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends GetView<Counter> {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second page'),
      ),
      body: Center(child: Obx(() => Text("count: ${controller.count}"))),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.add,
        child: const Icon(Icons.add),
      ),
    );
  }
}
