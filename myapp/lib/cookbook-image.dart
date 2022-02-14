import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';

class CookbookImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Image.network(
          'https://cdn.guanaitong.com/s2/mobile/V7.0/app/travel/img/icon1_active.png',
        ),
        // body: new Stack(
        //   children: <Widget>[
        //     new Center(
        //       child: new CircularProgressIndicator(),
        //     ),
        //     new FadeInImage.memoryNetwork(
        //       placeholder: kTransparentImage,
        //       image:
        //           'https://cdn.guanaitong.com/s2/mobile/V7.0/app/travel/img/icon1_active.png',
        //     )
        //   ],
        // ),
        // body: new Center(
        //   child: new CachedNetworkImage(
        //     // placeholder: new CircularProgressIndicator(),
        //     imageUrl:
        //         'https://cdn.guanaitong.com/s2/mobile/V7.0/app/travel/img/icon1_active.png',
        //   ),
        // ),
      ),
    );
  }
}
