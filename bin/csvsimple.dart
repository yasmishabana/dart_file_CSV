//1. Write a dart program store name, and age of students on a csv file and read it .

import 'dart:io';

void main() {
  // open file
  File file = File("students.csv");
  // write to file
  file.writeAsStringSync('Name,Age\n');
  print("enter the size");
  int size = int.parse(stdin.readLineSync().toString());
  for (int i = 0; i < size; i++) {
    // user input name
    stdout.write("Enter name of student ${i + 1}: ");
    String? name = stdin.readLineSync();
    stdout.write("Enter age of student ${i + 1}: ");
    // user input phone
    String? age = stdin.readLineSync();
    file.writeAsStringSync('$name,$age\n', mode: FileMode.append);
  }

  print("Congratulations!! CSV file written successfully.");
  String read = file.readAsStringSync();
  print(read);
}
