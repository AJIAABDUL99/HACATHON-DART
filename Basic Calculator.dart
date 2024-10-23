import 'dart:io';

double calculate(double x, double y, String operator) {
  switch (operator) {
    case "+":
      return x + y;
    case "-":
      return x - y;
    case "*":
      return x * y;
    case "/":
      if (y == 0) {
        throw ArgumentError("Cannot divide by zero.");
      }
      return x / y;
    default:
      throw ArgumentError('Invalid operator. Use +, -, * or /.');
  }
}

void main() {
  try {
    // Get first number
    stdout.write('Enter the first number: ');
    double x = double.parse(stdin.readLineSync()!);

    // Get second number
    stdout.write('Enter the second number: ');
    double y = double.parse(stdin.readLineSync()!);

    // Get the operator
    stdout.write('Enter an operator (+, -, *, /): ');
    String operator = stdin.readLineSync()!;

    // Perform the calculation
    double result = calculate(x, y, operator);

    // Output the result
    print('The result is: $result');
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}
