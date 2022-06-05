import "dart:io";

void main() {
  print('Training feedback');
  print('Enter No of participante');
  var par = int.parse(stdin.readLineSync()!);
  print('Numbe of participante $par');
  print("""Hows the training going
  1. Excellent
  2.Very good
  3.Good
  4.God knows""");

  var o1votes = 0, o2votes = 0, o3votes = 0, o4votes = 0;

  for (int i = 1; i <= par; i++) {
    print('Enter the number');
    var fed = int.parse(stdin.readLineSync()!);
    switch (fed) {
      case 1:
        o1votes++;
        continue;
      case 2:
        o2votes++;
        continue;
      case 3:
        o3votes++;
        continue;
      case 4:
        o4votes++;
        continue;
    }
  }
  var total = o1votes + o2votes + o3votes + o4votes;
  print("excellent ${o1votes * 100 / total}%");
  print("very good ${o2votes * 100 / total}%");
  print("good ${o3votes * 100 / total}%");
  print("god knows ${o4votes * 100 / total}%");
}
