class Animals {
  String name = "动物"; //公有属性
  String _food = "食物"; //私有属性，加下划线，
  // ！！！同一个文件中不存在私有，都可以访问到

  void eat() {
    // 非静态方法可以调用静态方法
    log("$name 吃 $_food");
  }

  void jump() {
    log("$name 跳");
  }

  void hh() {
    print('hh');
  }

  // 静态方法，
  static log(String str) {
    print(str);
    // hh(); //静态方法不可以调用非静态方法
  }
}

class Dog extends Animals {}

// 抽象类
abstract class Animals2 {
  String? name = "动物"; //公有属性
  String _food = "食物"; //私有属性，加下划线，

  void eat() {
    log("$name 吃 $_food");
  }

  void jump();

  static log(String str) {
    print(str);
  }
}

// 抽象类中的实体方法（eat）可以直接继承，抽象方法（jump）需要实现
class Cat extends Animals2 {
  @override
  void jump() {
    print("jump");
  }
}

class Pig implements Animals2 {
  @override
  String _food = "food";

  @override
  String? name = "pig";

  @override
  void eat() {
    print("$name eat $_food");
  }

  @override
  void jump() {
    print("$name jump!!!");
  }
}

class Actions1 {
  void run() {
    print("run 1");
  }
}
class Actions2 {
  void run() {
    print("run 2");
  }
}

class Fish extends Animals2 with Actions1, Actions2 {
  @override
  void jump() {
    print("jupm!!!");
  }

  String? name;

  // Fish(String _name) {
  //   name = _name;
  // }
  // 语法糖的写法
  Fish(this.name);
  // 有默认值
  // Fish() : this.name = "fish";
}
