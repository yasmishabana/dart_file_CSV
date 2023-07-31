import 'dart:io';

void main(List<String> args) {
  print("enter the size of a map");
  int size = int.parse(stdin.readLineSync().toString());

  Map map = {};

  while (true) {
    for (int i = 0; i < size; i++) {
      print("enter a key");
      var key = stdin.readLineSync();

      print("enter a value");
      var value = stdin.readLineSync();

      if (size == i) {
        print("map is :" + map.toString());
        break;
      } else {
        map[key] = value;
      }
    }
    print("map is :" + map.toString());
    break;
    // map.forEach((key, value) {
    //   print(key + ':' + value.toString());
    // }
    // );
  }
}
