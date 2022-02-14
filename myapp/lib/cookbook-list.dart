import 'package:flutter/material.dart';

class CookbookListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';
    // final items = new List<String>.generate(10000, (i) => "Item $i");

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        // body: new Container(
        //   child: new ListView(
        //     scrollDirection: Axis.horizontal,
        //     children: <Widget>[
        //       new Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.red,
        //       ),
        //       new Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.blue,
        //       ),
        //       new Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.yellow,
        //       ),
        //     ],
        //   ),
        // ),

        // body: new ListView.builder(
        //   itemCount: items.length,
        //   itemBuilder: (context, index) {
        //     return new ListTile(
        //       title: new Text('${items[index]}'),
        //     );
        //   },
        // ),

        body: new GridView.count(
          crossAxisCount: 2,
          children: new List.generate(100, (index) {
            return new Center(
              child: new Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      ),
    );
  }
}
