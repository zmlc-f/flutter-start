import 'package:get/get.dart';
import '../pages/index.dart';

class RouteConig {
  static String home = "/home";
  static String main = "/main";
  static String unknow = "/unknow";

  static final List<GetPage> getPages = [
    GetPage(name: home, page: () => const HomePage(),),
    GetPage(name: main, page: () => const MainPage(),),
  ];

  static GetPage unknownRoute = GetPage(
    name: unknow,
    page: () => const UnknowPage(),
  );
}
