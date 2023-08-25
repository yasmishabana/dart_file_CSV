import 'dart:io';

main() {
  String filename = 'path/to/sample.txt';
  new File(filename).create(recursive: true);
  String read = File(filename).readAsStringSync();
  print(read);
}
