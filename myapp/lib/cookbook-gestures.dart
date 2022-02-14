import 'package:flutter/material.dart';

class CookbookGesturesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Gesture Demo';
    final items = new List<String>.generate(20, (i) => "Item $i");

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        // body: new Center(
        //   child: new GestureDetector(
        //     onTap: () {
        //       // final snackBar = new SnackBar(content: new Text("Tap"));
        //       // Scaffold.of(context).showSnackBar(snackBar);
        //       // ScaffoldMessenger.of(context).showSnackBar(snackBar);
        //       print('tap');
        //     },
        //     child: new Container(
        //       padding: new EdgeInsets.all(12.0),
        //       decoration: new BoxDecoration(
        //         color: Theme.of(context).primaryColor,
        //         borderRadius: new BorderRadius.circular(8.0),
        //       ),
        //       child: new Text('My Button'),
        //     ),
        //   ),
        // ),

        // 水波纹
        // body: new Center(
        //   child: new InkWell(
        //     onTap: () {
        //       print('tap');
        //     },
        //     child: new Container(
        //       padding: new EdgeInsets.all(12.0),
        //       child: new Text('Flat Button'),
        //     ),
        //   ),
        // ),

        // 滑动删除
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return new Dismissible(
              // Each Dismissible must contain a Key. Keys allow Flutter to
              // uniquely identify Widgets.
              key: new Key(item),
              // We also need to provide a function that will tell our app
              // what to do after an item has been swiped away.
              onDismissed: (direction) {
                items.removeAt(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  new SnackBar(content: new Text("$item dismissed")),
                );
                // Scaffold.of(context).showSnackBar(
                //     new SnackBar(content: new Text("$item dismissed")));
              },
              // Show a red background as the item is swiped away
              background: new Container(color: Colors.red),
              child: new ListTile(title: new Text('$item')),
            );
          },
        ),
      ),
    );
  }
}
