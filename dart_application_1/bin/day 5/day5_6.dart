class Employee {
  final String _name;
  final double _Empid;
  final int _DEptID;

  Employee(this._name, this._Empid, this._DEptID);

  void printemp() {
    print('Emp NAme : $_name\nEmp id : $_Empid\nDept id : $_DEptID');
  }
}

mixin DeveloperpAYROLL {
  late double Salary;
  void printsal() {
    print('Salary $Salary');
  }
}
mixin CommissionPayroll {
  late double Salary;
  late double comm;
  void printsal() {
    print('Total Salary = ${Salary + comm}');
  }
}

class Developer extends Employee with DeveloperpAYROLL {
  Developer(name, Empid, DEptId, Salary) : super(name, Empid, DEptId) {
    this.Salary = Salary;
  }

  @override
  void printemp() {
    super.printemp();
    super.printsal();
  }
}

class Salesman extends Employee with CommissionPayroll {
  Salesman(name, empid, deptid, Salary, comm) : super(name, empid, deptid) {
    this.Salary = Salary;
    this.comm = comm;
  }

  @override
  void printemp() {
    super.printemp();
    super.printsal();
  }
}

void main(List<String> args) {
  var s1 = Developer('aman', 1011.0, 501, 1000.0);
  s1.printemp();
  s1.printsal();
  var s2 = Salesman('aman', 23.2, 7889, 50000.0, 90.0);
  s2.printemp();
  s2.printsal();
}
