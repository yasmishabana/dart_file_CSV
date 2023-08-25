import 'dart:io';

void main(List<String> args) {
  File file = File('test11.txt');
  File file2 = File('texsq11.txt');
  File(file.toString()).copySync(file2.toString());
}
