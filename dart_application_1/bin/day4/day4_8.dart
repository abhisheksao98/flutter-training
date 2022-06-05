class ip {
  final double x, y;
  const ip(this.x, this.y);
  @override
  String toString() => 'X: $x Y : $y';
}

void main() {
  var ip1 = ip(5, 6);
  print(ip1);
}
