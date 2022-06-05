class point {
  double x;
  double y;
  point(this.x, this.y);

  point.alongxaxis(double x) : this(5, 0);
  point.alongyaxis(double y) : this(0, 10);
  @override
  String toString() => 'X: $x ,Y : $y';
}

void main() {
  var p1 = point(10, 5);
  var p2 = point.alongxaxis(9);
  var p3 = point.alongyaxis(10);
  print(p1.toString());
  print(p2.toString());
  print(p3.toString());
}
