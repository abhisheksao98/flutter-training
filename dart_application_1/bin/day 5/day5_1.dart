class Employee {
  final String _empName;
  final int _empId;
  final double _empSal;

  Employee(this._empName, this._empId, this._empSal);

  void show() {
    print('Emp Name = $_empName\nEmp ID = $_empId\nEmp Salary = $_empSal');
  }
}

class Salesman extends Employee {
  final double _comm;
  Salesman(empName, empID, empSal, this._comm) : super(empName, empID, empSal);
  @override
  void show() {
    super.show();
    print('Commision $_comm');
  }
}

void main(List<String> args) {
  var salesman = Salesman('Aman', 5001, 5000.0, 67);
  salesman.show();
}
