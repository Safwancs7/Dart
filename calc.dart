import 'dart:io';

void main() {
  print('==============================');
  print('🧮 Welcome to BasiCulator');
  print('==============================');

  while (true) {
    print('\nChoose an operation:');
    print('1. Addition (+)');
    print('2. Subtraction (-)');
    print('3. Multiplication (*)');
    print('4. Division (/)');
    print('5. Greater than (>)');
    print('6. Less than (<)');
    print('7. Equal to (==)');
    print('8. Exit');

    stdout.write('Enter your choice (1-8): ');
    String? choice = stdin.readLineSync();

    if (choice == '8') {
      print('Good. Know when to stop. Exiting...');
      break;
    }

    double num1 = _readNumber('Enter first number: ');
    double num2 = _readNumber('Enter second number: ');

    switch (choice) {
      case '1':
        print('Result: ${num1 + num2}');
        break;
      case '2':
        print('Result: ${num1 - num2}');
        break;
      case '3':
        print('Result: ${num1 * num2}');
        break;
      case '4':
        if (num2 == 0) {
          print('Error: Division by zero is not allowed.');
        } else {
          print('Result: ${num1 / num2}');
        }
        break;
      case '5':
        print('Result: ${num1 > num2}');
        break;
      case '6':
        print('Result: ${num1 < num2}');
        break;
      case '7':
        print('Result: ${num1 == num2}');
        break;
      default:
        print('Invalid choice. Read the menu properly.');
    }
  }
}

/// Reads a valid double from the user
double _readNumber(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();

    final value = double.tryParse(input ?? '');
    if (value != null) {
      return value;
    }

    print('Invalid number. Try again.');
  }
}
