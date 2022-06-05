// class BassClass {
//   //BassClass() {
//   final String message;
//   BassClass(this.message);
//   //print('This is a base class');
//   void show() {
//     print(message);
//   }
// }

// class DerivedClass extends BassClass {
//   DerivedClass(message) : super(message);
//   // print('This is a  derived class');

// }

// void main() {
//   var dc = BassClass('this is a message');
//   dc.show();
// }

class BassClass {
  //BassClass() {

  BassClass(message) {
    print('This is a base class $message');
  }
}

class DerivedClass extends BassClass {
  final String message;
  DerivedClass(this.message) : super(message) {
    print('This is a  derived class $message');
  }
}

void main() {
  var dc = BassClass('this is a message');
}
