import 'dart:io';

void main() {
  print("Enter a number:");

  String? input = stdin.readLineSync();

  if (input == null || int.tryParse(input) == null) {
    print("❌ Invalid input. Enter a valid integer.");
    return;
  }

  int number = int.parse(input);

  print("\nMultiplication Table of $number");
  print("-----------------------------");

  int sum = 0;

  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    sum += result;
    print("$number x $i = $result");
  }

  print("-----------------------------");
  print("Sum of the multiplication table: $sum");
}
