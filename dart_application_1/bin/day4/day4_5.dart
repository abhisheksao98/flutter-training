import 'day4_4.dart';

class Employee {
  String name;
  int Empcode;
  String Dept;
  static int TotalEmployee = 0;
  Employee(this.name, this.Empcode, this.Dept) {
    Employee.TotalEmployee += 1;
  }
  void show() {
    print('Name = $name\nEmpcode = $Empcode\nDept = $Dept');
    print('-----------------------------');
  }
}

void main(List<String> args) {
  Employee e1 = Employee('Aman', 20001, 'Flutter Training');
  Employee e2 = Employee('Rohan', 20002, 'Java');
  e1.show();
  e2.show();
  print('Total Employees ${Employee.TotalEmployee}');
}
