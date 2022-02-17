import 'animals.dart';

main() {
  Animals a = new Animals();
  // a.eat();
  // a.name = "hhh";
  // a.eat();

  // 连缀操作
  a
    ..eat()
    ..name = "hhh"
    ..eat();

  Animals.log("==================");

  Dog d = new Dog();
  d
    ..name = "dog"
    ..eat();

  Cat c = new Cat();
  c
    ..name = "cat"
    ..jump();

  Animals.log("==================");

  Pig p = new Pig();
  p
    ..eat()
    ..jump();

  // Animals2 aa = new Animals2();
  Animals.log("==================");

  Fish f = new Fish("fish");
  f.eat();
  f.run();
}
