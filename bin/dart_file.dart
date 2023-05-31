import 'dart:io';

import 'package:dart_file/dart_file.dart' as dart_file;

void main(List<String> arguments) {
  List studentlst = [];
  print('Enter student name and age or enter "exit" to EXIT');
  while (true) {
    print("Enter a name");
    String? name = stdin.readLineSync();
    if (name == 'exit') {
      break;
    }
    print("Enter a age");
    String? age = stdin.readLineSync();
    if (name == 'exit') {
      break;
    }
    studentlst.add({'name': name, 'age': age});
  }
  print("list====" + studentlst.toString());

  String studentcsv = 'name,age\n';
  studentlst.forEach((student) {
    studentcsv += '${student['name']},${student['age']}\n';
  });
  String studentage = "E:/student_details.csv";
  File(studentage).writeAsStringSync(studentcsv);
  print('\nStudent Details have been saved to $studentage');
  print('\nstudent details are');
  List lines = File(studentage).readAsLinesSync();
  for (int i = 1; i < lines.length; i++) {
    List values = lines[i].split(',');
    String name = values[0];
    String age = values[1];
    print('Name:$name');
    print('Age:$age');
  }
}
