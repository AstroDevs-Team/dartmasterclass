import 'dart:io';

void main() {
  print('Enter first number:');
  double? num1 = double.tryParse(stdin.readLineSync() ?? '');

  print('Enter second number:');
  double? num2 = double.tryParse(stdin.readLineSync() ?? '');

  if (num1 == null || num2 == null) {
    print('Invalid input. Please enter valid numbers.');
    return;
  }

  print('Choose an operation: +, -, *, /');
  String? operation = stdin.readLineSync();

  double result;

  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('Error: Division by zero');
        return;
      }
      break;
    default:
      print('Invalid operation.');
      return;
  }

  print('Result: $num1 $operation $num2 = $result');
}
