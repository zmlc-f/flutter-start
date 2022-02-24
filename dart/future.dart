main() {
  // Future.delayed(Duration(seconds: 1), () {
  //   // return "hi world!";
  //   throw AssertionError('err');
  // }).then((value) {
  //   print('success: $value');
  // }, onError: (e) {
  //   print(e);
  // })
  // // .catchError((e) {
  // //   print(e);
  // // })
  // .whenComplete(() {
  //   print('complele');
  // });

  Future.wait([
    // 2秒后返回结果
    Future.delayed(Duration(seconds: 2), () {
      return "hello";
    }),
    // 4秒后返回结果
    Future.delayed(Duration(seconds: 4), () {
      return " world";
    })
  ]).then((results) {
    print(results[0] + results[1]);
  }).catchError((e) {
    print(e);
  });

  // 使用Future消除回调地狱
  // login("alice", "******").then((id) {
  //   return getUserInfo(id);
  // }).then((userInfo) {
  //   return saveUserInfo(userInfo);
  // }).then((e) {
  //   //执行接下来的操作
  // }).catchError((e) {
  //   //错误处理
  //   print(e);
  // });

  // 使用async/await
  // task() async {
  //   try {
  //     String id = await login("alice", "******");
  //     String userInfo = await getUserInfo(id);
  //     await saveUserInfo(userInfo);
  //     //执行接下来的操作
  //   } catch (e) {
  //     //错误处理
  //     print(e);
  //   }
  // }
}
