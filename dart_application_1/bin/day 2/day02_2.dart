import 'dart:io';

void main() {
  var cousefee = ['Couses fee , 1000 , 2000 , 3000 , 4000 , 5000'];
  var courses = ['Courses c++ , java , flutter , .net ,dart'];
  for (int i = 0; i < courses.length; i++) {
    print('Enter which course do you want');
    var inp = int.parse(stdin.readLineSync()!);
    switch (inp) {
      case c++:
        print('c++ fees 1000');
        print('Do you want more courses');
        var incou = int.parse(stdin.readLineSync()!);
        if (incou) continue;
    }
  }
}
