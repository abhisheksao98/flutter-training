import "dart:io";

void main() {
  print('Enter your roll number');
  var age = int.parse(stdin.readLineSync()!);
  print('Enter your name');
  var name = stdin.readLineSync();
  print('Enter the marks of maths');
  var maths = int.parse(stdin.readLineSync()!);
  print('Enter the marks of Physics');
  var physics = int.parse(stdin.readLineSync()!);
  print('Enter the marks of Computersci');
  var computersci = int.parse(stdin.readLineSync()!);

  var result = maths + physics + computersci;
  print('total marks of student is $result');
  var percentage = result * 100 / 300;
  print('Percentage of student is $percentage');
  if (maths > 75 || physics > 75 || computersci > 75) {
    print('Congratulations you are passed');
  } else {
    print('You are failed');
  }
  if (percentage > 95) {
    print('your grade is A+');
  } else if (percentage > 90 || percentage < 95) {
    print('Your grade is A');
  } else if ((percentage > 80) || (percentage < 90)) {
    print('Your grade is B');
  } else if (percentage < 75) {
    print('grade c');
  }
}
