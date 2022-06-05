class employee {
  late String name;
  late int empCode;
  late String dept;

  static int Totalnumber = 0;

  void showdetails() {
    print('Name = $name\nEMP code = $empCode\nDEpt = $dept');
    print('--------------------------------');
  }
}

void main() {
  employee e1 = employee();
  e1.name = 'Aman';
  e1.empCode = 321;
  e1.dept = 'Mobile app';
  e1.showdetails();
  employee e2 = employee();
  e2.name = 'Mohan';
  e2.empCode = 123;
  e2.dept = 'Noob';
  e2.showdetails();

  employee.Totalnumber += 2;
  print('Total Students ${employee.Totalnumber}');
}
