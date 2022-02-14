import 'package:flutter/material.dart';

class CookbookThemeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Custom Themes',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        colorScheme: ColorScheme.dark(secondary: Colors.red[200]),
        // colorScheme: Colors.cyan[600],
        // accentColor: Colors.cyan[600],
        // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.cyan[600]),
      ),
      home: new CookbookThemeHomePage(
        title: 'Custom Themes',
      ),
    );
  }
}

class CookbookThemeHomePage extends StatelessWidget {
  final String title;
  CookbookThemeHomePage({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Container(
          color: Theme.of(context).colorScheme.secondary,
          child: new Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(
            // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.yellow),
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Colors.yellow),
          ),
          child: new FloatingActionButton(
            onPressed: null,
            child: new Icon(Icons.add),
          )),
    );
  }
}
