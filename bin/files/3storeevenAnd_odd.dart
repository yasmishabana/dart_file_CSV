import 'dart:io';

void main() {
  final evenFile = File('even.txt');
  final oddFile = File('odd.txt');

  // Create the files if they don't exist
  evenFile.createSync();
  oddFile.createSync();

  // Read 10 numbers from the user
  final numbers = <int>[];

  for (var i = 0; i < 10; i++) {
    stdout.write('Enter number ${i + 1}: ');
    final number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  // Separate even and odd numbers and write them to the respective files
  final evenNumbers = <int>[];
  final oddNumbers = <int>[];

  for (final number in numbers) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    } else {
      oddNumbers.add(number);
    }
  }

  evenFile.writeAsStringSync(evenNumbers.join('\n'));
  oddFile.writeAsStringSync(oddNumbers.join('\n'));

  // Read and print the contents of the even file
  final evenContent = evenFile.readAsStringSync();
  print('Even numbers:---');
  print(evenContent);

  // Read and print the contents of the odd file
  final oddContent = oddFile.readAsStringSync();
  print('Odd numbers:');
  print(oddContent);
}
