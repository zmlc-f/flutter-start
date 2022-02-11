import 'package:flutter/material.dart';

class CookbookThemeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'theme',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new Column(
        children: [
          new Expanded(
            child: new Center(
              child: new Text('Hello, world!'),
            ),
          ),
        ],
      ),
    );
  }
}
