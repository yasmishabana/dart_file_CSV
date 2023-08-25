import 'dart:io';

void main() {
  print('Enter the filename:');
  String? fileName = stdin.readLineSync();

  if (fileName == null || fileName.isEmpty) {
    print('Invalid filename. Please enter a valid name.');
    return;
  }

  // try {
  File file = File(fileName);
  if (file.existsSync()) {
    print('File already exists.');
  } else {
    file.createSync();
    print('File "$fileName" created successfully.');
  }
  // } catch (e) {
  //   print('An error occurred: $e');
  // }
}







// import 'dart:io';

// void main() {
//   print('Enter the filename:');
//   String? fileName = stdin.readLineSync();

//   if (fileName == null || fileName.isEmpty) {
//     print('Invalid filename. Please enter a valid name.');
//   } else {
//     createFile(fileName);
//   }
// }

// void createFile(String fileName) async {
//   try {
//     File file = File(fileName);

//     if (await file.exists()) {
//       print('File already exists.');
//     } else {
//       await file.create();
//       print('File "$fileName" created successfully.');
//     }
//   } catch (e) {
//     print('An error occurred: $e');
//   }
// }
