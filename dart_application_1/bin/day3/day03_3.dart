void main() {
  var originalNumbers = [10, 20, 30, 40, 50];

  // var squarednumbers = [];
  // for (var number in originalNumbers) {
  //   squarednumbers.add(number * number);
  // }
  var squaredNumbers = originalNumbers.map((number) => number * number);
  print('Original numbers $originalNumbers');
  print('Squared numbers $squaredNumbers');
}
