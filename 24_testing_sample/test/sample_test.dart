import 'package:sample/sample.dart';
import 'package:test/test.dart';

void main() {
  group('Calculator Tests', () {
    final calculator = Calculator();

    test('adds two numbers', () {
      expect(calculator.add(2, 3), 5);
    });

    test('subtracts two numbers', () {
      expect(calculator.subtract(5, 3), 2);
    });
  });
}
