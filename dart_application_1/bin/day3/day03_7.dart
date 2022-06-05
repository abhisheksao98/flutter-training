import 'dart:io';

void employee(empid, name, Salary,
    {job = 'Developer', depno = 1000, Location = 'Pune', commission = 0}) {
  print(
      'employee details\n  empid $empid\n name $name\n job title $job\n depno $depno\n Location $Location\n Commission $commission');
  print('-----------------------------------------------');
}

void main() {
  employee(1100, 'bhadwa', 500);
  employee(1023, 'aman', 1000);
  employee(0000, 'g***', 0000,
      commission: 20, Location: 'gurugram', depno: 0909090);
  employee(4567, 'wwwete', 90, job: 'ui');
}
