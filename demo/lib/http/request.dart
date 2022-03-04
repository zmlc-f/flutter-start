import 'package:dio/dio.dart';

class HttpRequest {
  get() async {
    try {
      var res = await Dio().get("https://a.guanaitong.tech/praise-api/getKey");
      print(res);
    } catch (e) {
      print(e);
    }
  }
}
