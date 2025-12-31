import 'dart:io';

void main() {
  print("How many numbers do you want to enter?");
  String? countInput = stdin.readLineSync();

  if (countInput == null || int.tryParse(countInput) == null) {
    print("❌ Invalid count. Restart and enter a number.");
    return;
  }

  int count = int.parse(countInput);
  List<int> numbers = [];
  int sum = 0;

  for (int i = 1; i <= count; i++) {
    print("Enter number $i:");
    String? numInput = stdin.readLineSync();

    if (numInput == null || int.tryParse(numInput) == null) {
      print("❌ Invalid input. Program stopped.");
      return;
    }

    int value = int.parse(numInput);
    numbers.add(value);
    sum += value;
  }

  print("\n📊 Custom Message Output");
  print("You entered: $numbers");
  print("👉 The total sum of these numbers is: $sum");
}
