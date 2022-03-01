import 'package:flutter/material.dart';

class RouterMapWidget extends StatelessWidget {
  const RouterMapWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Router map',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const MyHomePage(title: 'Home Page 222'),
        "second": (context) => const NewRoute(),
      },
      // home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  void add() {
    setState(() {
      count += 1;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text("home page"),
            Text("count: $count"),
            IconButton(
              onPressed: add,
              icon: const Icon(
                Icons.add,
                size: 24,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var result = await Navigator.pushNamed(
            context,
            "second",
            arguments: "test $count",
          );
          print("路由返回值: $result");
        },
        child: const Icon(
          Icons.arrow_right_alt,
          size: 24,
        ),
      ),
    );
  }
}

class NewRoute extends StatelessWidget {
  const NewRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text =
        ModalRoute.of(context)?.settings.arguments.toString() ?? "no data";
    return Scaffold(
      appBar: AppBar(
        title: const Text("New route"),
      ),
      body: Center(
        child: Text(text),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, "我是返回值");
        },
        child: const Icon(
          Icons.arrow_back,
          size: 24,
        ),
      ),
    );
  }
}
