import "package:dio/dio.dart";
import 'package:flutter/material.dart';

class DioWidget extends StatelessWidget {
  const DioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "dio demo",
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final Dio _dio = Dio();
  // final String _stateText = "";

  // _getData() async {
  //   Response response = await _dio
  //       .get('https://a.guanaitong.tech/channel_travel_api/common/getKey');
  //   print(response.data.toString());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('dio demo')),
      body: FutureBuilder(
        future: _dio.get('https://api.github.com/orgs/flutterchina/repos'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Response response = snapshot.data;
            //发生错误
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            //请求成功，通过项目信息构建用于显示项目名称的ListView
            return ListView(
              children: response.data
                  .map<Widget>((e) => ListTile(title: Text(e["full_name"])))
                  .toList(),
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
