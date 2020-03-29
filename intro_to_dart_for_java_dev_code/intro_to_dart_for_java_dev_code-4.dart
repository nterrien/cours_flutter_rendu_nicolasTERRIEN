import 'dart:math';

abstract class Shape {
  num get area;

  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}

main() {
  final circle = shapeFactory('circle');
  print(circle.area);
  final square = shapeFactory('square');
  print(square.area);
  final circle2 = Shape('circle');
  print(circle2.area);
  final square2 = Shape('square');
  print(square2.area);
  final truc = shapeFactory('fdsffdsfds');
}

