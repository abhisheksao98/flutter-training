/*void main(){

  print("helloworld");
}
*/
void main() {
  num no1 = 01;
  print("$no1 is ${no1.runtimeType}");

  /// num can be used for both int and double
  num no2 = 1.5;
  print("$no2 is ${no2.runtimeType}");

  int ivalue = 7;
  print("$ivalue is ${ivalue.runtimeType}");
  String s = ivalue.toString();
  print("$s is ${s.runtimeType}");

  var name = "aman";
  print("$name is ${name.runtimeType}");

  dynamic dynvar = "Dynamic variable";
  print("$dynvar is ${dynvar.runtimeType}");
  print(dynvar);
  dynvar = 67;
  print("$dynvar is ${dynvar.runtimeType}");
  print(dynvar);
  dynvar = true;
  print("$dynvar is ${dynvar.runtimeType}");
}
/*
void main() {
  int num = 10;
  double num2 = 1.9;
  print(num);
  print(num2);

  int ivalue = 8999;
  print("""This is new line""");
  var svalue1 = ivalue.toString();
  var svalue2 = ivalue.toDouble();
  String svalue3 = ivalue.toStringAsPrecision(1);
  print(ivalue);
  print(svalue1);
  print(svalue2);
  print("$svalue3 is ${svalue3.runtimeType}");
}
*/

