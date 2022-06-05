extension<T> on List<T> {
  List<String> variablename(String symbol) =>
      map((item) => '$symbol , $item').toList();
}

void main() {
  var numbers = [10, 20, 30];
  print(numbers.variablename('Rs'));
  var name = ['aman ', 'sam '];
  print(name.variablename('Mr.'));
}
