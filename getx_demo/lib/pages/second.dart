import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  final String title = Get.parameters["title"] ?? "";

  @override
  Widget build(BuildContext context) {
    print(22);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("arguments: ${Get.arguments}"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("go back"),
            )
          ],
        ),
      ),
    );
  }
}
