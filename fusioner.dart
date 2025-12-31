void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  print("Original List: $numbers");

  List<int> doubled = applyOperation(numbers, doubleValue);
  print("Doubled List: $doubled");

  List<int> squared = applyOperation(numbers, squareValue);
  print("Squared List: $squared");
}

// Higher-order function
List<int> applyOperation(List<int> list, int Function(int) operation) {
  List<int> result = [];

  for (int value in list) {
    result.add(operation(value));
  }

  return result;
}

// Operation 1
int doubleValue(int x) {
  return x * 2;
}

// Operation 2
int squareValue(int x) {
  return x * x;
}
