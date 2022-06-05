class Employee {
  String name;
  int Empcode;
  String Dept;
  late double Salary;
  static int TotalEmployee = 0;
  Employee(this.name, this.Empcode, this.Dept) {
    Salary = 0;
    Employee.TotalEmployee += 1;
  }
  Employee.withsalary(this.name, this.Empcode, this.Dept, this.Salary);

  void show() {
    print('Name = $name\nEmpcode = $Empcode\nDept = $Dept\nSalary = $Salary');
    print('-----------------------------');
  }
}

void main(List<String> args) {
  Employee e1 = Employee('Aman', 20001, 'Flutter Training');
  Employee e2 = Employee.withsalary('Rohan', 20002, 'Java', 70000);
  e1.show();
  e2.show();
  print('Total Employees ${Employee.TotalEmployee}');
}
