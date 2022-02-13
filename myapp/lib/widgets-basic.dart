import 'package:flutter/material.dart';

// 基础widget使用
class WidgetsBasicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: new MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material 是UI呈现的“一张纸”
    return new Material(
      // Column is 垂直方向的线性布局.
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.titleLarge,
            ),
          ),
          new MyButton(),
          new Counter(),
          new Counter2(),
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

// 基础widget
class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          new Expanded(
            child: title,
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

// 监听手式
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      onDoubleTap: () {
        print('MyButton was double tapped!');
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 8.0,
        ),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: new Center(
          child: new Text('Listener Gesture'),
        ),
      ),
    );
  }
}

// 状态
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => new _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: [
        new RaisedButton(
          onPressed: _increment,
          child: new Text('Increment'),
        ),
        new Text(
          'counter: $_counter',
        ),
      ],
    );
  }
}

// 父子通信：事件流是“向上”传递的，而状态流是“向下”传递的

class Counter2 extends StatefulWidget {
  @override
  _CounterState2 createState() => new _CounterState2();
}

class _CounterState2 extends State<Counter2> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: [
        new CounterIncrementor(
          onPressed: _increment,
        ),
        new CounterDisplay(
          count: _counter,
        ),
      ],
    );
  }
}

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return new Text('Count: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text('Increment'),
    );
  }
}
