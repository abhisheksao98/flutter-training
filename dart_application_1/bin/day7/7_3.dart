///synchronise method
// import 'dart:async';

// Future<String> downloadFile() {
//   print('File Downloading started');
//   Future<String> result = Future.delayed(
//     Duration(seconds: 5),
//     () {
//       return "Dart language";
//     },
//   );
//   print('Downloaded');
//   return result;
// }

// void PrintREsults()  {
//   print('File content');
//   var filecontent =  downloadFile();
//   print('The Content of the download file $filecontent');
//   print("File is Exceuted");
// }

// void main() {
//   print('Main Program Start Exceution');
//   PrintREsults();
//   print('Done');
// }

///ASynchronise method
import 'dart:async';

Future<String> downloadFile() {
  print('File Downloading started');
  Future<String> result = Future.delayed(
    Duration(seconds: 5),
    () {
      return "Dart language";
    },
  );
  print('Downloaded');
  return result;
}

void PrintREsults() async {
  var filecontent = await downloadFile();
  print('The Content of the download file $filecontent');
  print("File is Exceuted");
}

void main() {
  print('Main Program Start Exceution');
  PrintREsults();
  print('Done');
}
