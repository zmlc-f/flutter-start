import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("home page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/second?title='second page'", arguments: "11");
              },
              child: const Text("go to second"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/third?title='third page'", arguments: "222");
              },
              child: const Text("go to third"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/aa?title='third page'", arguments: "222");
              },
              child: const Text("go to unknow"),
            ),
          ],
        ),
      ),
    );
  }
}
