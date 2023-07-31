import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  print("object");
  stud();
}

stud() async {
  Map<String, int> students = {};
  print("Enter the number of the students : ");
  int s = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < s; i++) {
    print("Enter student name ${i + 1}");
    String? name = stdin.readLineSync()!;

    print("Enter age ${i + 1}");
    int age = int.parse(stdin.readLineSync()!);
    students[name] = age;
  }

  //   String studcvs='NAme,Age\n';
  //   students.forEach((name,age) {
  //     studcvs+='${students[name]},${students[age]}\n';
  //   });
  //   String filename="F:/students.csv";
  //  File(filename).writeAsStringSync(studcvs);

  //   print('\nstudent details have been sved to $filename');
  //   print('\nstudent details are: ');
  //   List lines=File(filename).readAsBytesSync();
  //   for (var i = 0; i < lines.length; i++) {
  //     Map values =lines[i];
  //     String name=values[0];
  //     int age=values[1];
  //     print('name : $name');
  //     print('age : $age\n');

  //   }
}
