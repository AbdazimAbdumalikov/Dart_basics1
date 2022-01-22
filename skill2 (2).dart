//6
// Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
// У данного класса реализуйте метод distanceTo(Point another),
// который возвращает расстояние от данной точки до точки в параметре.
import 'dart:math';

void main() {
  Point p1 = Point(1, 1);
  Point p2 = Point(0, 0);
  print(p1.distanceTo(p2));
}

class Point {
  late double x;
  late double y;

  Point(double x, double y) {
    this.x = x;
    this.y = y;
  }

  double distanceTo(Point another) {
    return (sqrt(x - another.x) + (y - another.y));
  }
}