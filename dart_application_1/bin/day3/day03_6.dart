//Under parenthesis every value should be written compulsary
// int add(int no1, int no2, int no3, int no4, int no5) =>
//     no1 + no2 + no3 + no4 + no5;
// void main() {
//   var result = add(10, 20, 30, 40, 50);
//   print(result);
// }

int add(
        {required int no1,
        required int no2,
        int no3 = 0,
        int no4 = 0,
        int no5 = 0}) =>
    no1 + no2 + no3 + no4 + no5;
void main() {
  var result = add(no1: 10, no2: 20);
  var result1 = add(no1: 10, no2: 10, no3: 30, no4: 40, no5: 50);
  print(result);
  print(result1);
}

// int add(int no1, int no2, [int no3 = 0, int no4 = 0, int no5 = 0]) =>
//     no1 + no2 + no3 + no4 + no5;
// void main() {
//   var result = add(10, 20);
//   var result1 = add(20, 30, 50);
//   print(result);
//   print(result1);
// }
