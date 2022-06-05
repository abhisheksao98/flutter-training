extension StringExtension on String {
  int getWordsCount() {
    var words = this.split(' ');
    return words.length;
  }
}

void main() {
  var names = 'This is a string';
  print(names.getWordsCount());
}

// void main() {
//   var str = 'aman is a good boy';
//   print(str.length);
// }
