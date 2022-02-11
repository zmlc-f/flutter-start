import 'package:flutter/material.dart';

class CookbookThemeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      // theme: new ThemeData(
      //   brightness: Brightness.dark,
      //   primaryColor: Colors.lightBlue[800],
      //   accentColor: Colors.cyan[600],
      // ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Container(
            color: Theme.of(context).accentColor,
            child: new Text(
              'Hello World',
              style: Theme.of(context).textTheme.,
            ),
          ),
        ),
      ),
    );
  }
}
