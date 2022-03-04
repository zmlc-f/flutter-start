import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("main page"),
      ),
      body: const Center(
        child: Text("main"),
      ),
    );
  }
}
