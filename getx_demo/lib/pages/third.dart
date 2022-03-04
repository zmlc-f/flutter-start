import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({Key? key}) : super(key: key);

  final String title = Get.parameters["title"] ?? "";

  @override
  Widget build(BuildContext context) {
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
