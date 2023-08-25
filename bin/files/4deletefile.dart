// import 'dart:io';

// void main() {
//   createFile();
//   deleteFile();
// }

// void createFile() {
//   try {
//     File file = File('hello.txt');
//     file.createSync();
//     print('File "hello.txt" created successfully.');
//   } catch (e) {
//     print('An error occurred while creating the file: $e');
//   }
// }

// void deleteFile() {
//   try {
//     File file = File('hello.txt');
//     if (file.existsSync()) {
//       file.deleteSync();
//       print('File "hello.txt" deleted successfully.');
//     } else {
//       print('File "hello.txt" does not exist.');
//     }
//   } catch (e) {
//     print('An error occurred while deleting the file: $e');
//   }
// }

import 'dart:io';

void main(List<String> args) {
  try {
    File file = File('hello.txt');
    file.createSync();
    print('File "hello.txt" created successfully.');
  } catch (e) {
    print('An error occurred while creating the file: $e');
  }

  try {
    File file = File('hello.txt');
    if (file.existsSync()) {
      file.deleteSync();
      print('File "hello.txt" deleted successfully.');
    } else {
      print('File "hello.txt" does not exist.');
    }
  } catch (e) {
    print('An error occurred while deleting the file: $e');
  }
}
