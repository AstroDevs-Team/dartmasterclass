// ignore_for_file: unnecessary_type_check, unused_local_variable, dead_code

void main() {
  // =================================
  // Arithmetic Operators
  // =================================
  int a = 10;
  int b = 3;

  print('Addition: ${a + b}');
  print('Subtraction: ${a - b}');
  print('Multiplication: ${a * b}');
  print('Division: ${a / b}');
  print('Integer Division: ${a ~/ b}');
  print('Modulus: ${a % b}');

  print(--a);
  print(++b);

  // =================================
  // Comparison and Relational Operators
  // =================================

  int x = 5;
  int y = 10;

  print('Is x equal to y? ${x == y}');
  print('Is x not equal to y? ${x != y}');
  print('Is x greater than y? ${x > y}');
  print('Is x less than or equal to y? ${x <= y}');

  // =================================
  // Logical Operators
  // =================================

  bool isDartFun = true;
  bool isFlutterAwesome = true;

  print('Both Dart and Flutter are awesome? ${isDartFun && isFlutterAwesome}');
  print('Either Dart or Flutter is awesome? ${isDartFun || false}');
  print('Dart is not fun? ${!isDartFun}');

  // =================================
  // Type Test Operators
  // =================================
  var name = 'Dart';

  print('name is a String');

  var number = 42;
  print(number is int); // true
  print(number is! double); // true

  // =================================
  // Assignment Operators
  // =================================
  double num = 10;

  num += 5; // Now num is 15
  print(num);

  num -= 5; // Now num is 10 again (15 - 5)
  print(num);

  num *= 2; // Now num is 20
  print(num);

  num /= 2; // Now num is 10 (You cannot use this operator if "num" is an int)
  print(num);

  num %= 2; // Now num is 0
  print(num);
}
