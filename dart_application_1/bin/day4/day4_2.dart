void main() {
  //if null[??] operator if the first value is null it takes the second one if first one is not null then no actions perfformed
  //syntax  print(x??y)
  int comm = 4000;
  int? salary;
  print(comm ?? salary);
  print('----------------------------------------');
  //null aware operator[??=]
  // if(LHS) is null then its use (RHS) value or (LHS) value is not null then no actions is performed.
  int? imnull;
  int imnotNull = 100;
  imnull ??= 5;
  imnotNull ??= 150;
  print(imnull);
  print(imnotNull);
  print('-----------------------------------------------');
  //null Aware access [?.]
  //this operator is used to perform action on null value it will return null if its not null then it will return condition
  String? isnull;
  String isnotnull = 'Thiis is a string';
  print(isnull?.contains('string'));
  print('${isnotnull.contains('string')}');
}
