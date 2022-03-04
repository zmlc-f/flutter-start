import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class HomePage extends GetView {
  const HomePage({Key? key}) : super(key: key);

  void getData() async {
    try {
      var res = await Dio().get("https://a.guanaitong.tech/praise-api/getKey");
      print(res);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home page"),
      ),
      body: Center(
        child: Column(children: [
          const Text("home"),
          ElevatedButton(
            onPressed: getData,
            child: const Text('get data'),
          ),
        ]),
      ),
    );
  }
}
