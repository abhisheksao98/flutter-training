import 'dart:io';

int multiply(int x) {
  int total = x;
  var result = x * 100;
  return result;
}

int squaredroot(int x) => x * x;

List<int> forall(Function action, List<int> values) {
  var res = <int>[];
  for (var i = 0; i < values.length; i++) {
    res.add(action(values[i]));
  }
  return res;
}

void main() {
  var numbers = [2, 4, 5];
  var percentage1 = forall(multiply, numbers);
  var add1 = forall(squaredroot, numbers);
  print(numbers);
  print('multiply $percentage1');
  print('squareroot $add1');
}
