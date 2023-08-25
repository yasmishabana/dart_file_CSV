// dart program to write to csv file
import 'dart:io';

void main() {
  // open file
  File file = File("students.csv");
  // write to file
  file.writeAsStringSync('Name,Age\n');
  for (int i = 0; i < 3; i++) {
    // user input name
    stdout.write("Enter name of student ${i + 1}: ");
    String? name = stdin.readLineSync();
    stdout.write("Enter age of student ${i + 1}: ");
    // user input age
    String? age = stdin.readLineSync();
    file.writeAsStringSync('$name,$age\n', mode: FileMode.append);
  }

  print("Congratulations!! CSV file written successfully.");
  String read = file.readAsStringSync();
  print(read);
}
