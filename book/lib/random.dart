import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWidget extends StatelessWidget {
  const RandomWidget({Key? key}) : super(key: key);
  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo random word',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      home: const RandomWordsWidget(),
    );
  }
}

class RandomWordsWidget extends StatelessWidget {
  const RandomWordsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 生成随机字符串
    final wordPair = WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(wordPair.toString()),
    );
  }
}
