import 'dart:indexed_db';

void main() {
  var courses = [
    'java is a good programming language'
        'it supports oops'
        'python is easier than java'
        'my first programming language  which i learned is c'
        'flutter is uswed for making mobile application'
  ];
  print('brief about some courses');
  courses.forEach((course) {
    print('$courses.indexOf(course) + 1} : $courses');
  });
}
