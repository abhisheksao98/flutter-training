extension on List<num> {
  List<num> operator *(int n) => map((item) => num.parse('$item') * n).toList();
  List<num> operator -() => map((item) => num.parse('$item') / 2).toList();
}

void main() {
  var prices = [10, 20, 30];
  print(prices);
  print('----------------------');

  print('hiked prices');
  print(prices * 2);
  print('----------------------');
  print('50% discount prices');
  print(-prices);
  print('----------------------');
}
