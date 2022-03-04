import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './pages/index.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/home",
      unknownRoute: GetPage(
        name: "/notfound",
        page: () => const UnknowPage(),
      ),
      getPages: [
        GetPage(
          name: "/home",
          page: () => const HomePage(),
        ),
        GetPage(
          name: "/second",
          page: () => SecondPage(),
        ),
        GetPage(
          name: "/third",
          page: () => ThirdPage(),
          transition: Transition.downToUp,
        ),
      ],
      routingCallback: (routing) {
        String? r = routing?.current;
        if (r != null && r.contains("/second")) {
          print("11");
        }
      },
      // home: MyHomePage(title: "get demo"),
    );
  }
}
