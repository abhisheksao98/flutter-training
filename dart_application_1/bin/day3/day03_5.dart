///() fixed values according to names under parenthesis
// import 'dart:io';

// int calculateSalary(salary, hra, bonus, pf, it) =>
//     salary + hra + bonus - pf - it;
// void main() {
//   var netSalary = calculateSalary(10000, 500, 100, 67, 700);
//   print(netSalary);
// }
import 'dart:io';

num calculateSalary({required salary, bonus = 0, hra = 0, it = 0, pf = 0}) =>
    salary + bonus + hra - pf - it;
void main() {
  var netsalary =
      calculateSalary(salary: 100000, bonus: 1000, pf: 900, it: 200);
  print('NetSalary $netsalary');
}
