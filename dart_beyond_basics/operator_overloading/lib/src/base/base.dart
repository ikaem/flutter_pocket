void addTwoPoints() {
  final Point firstPoint = Point(23, 23);
  final Point secondPoint = Point(3, 43);

  final Point addedPoint = firstPoint + secondPoint;

  print(addedPoint);
}

class Point {
  const Point(this.x, this.y);

  final double x;
  final double y;

  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  @override
  String toString() => "{$x, $y}";
}
