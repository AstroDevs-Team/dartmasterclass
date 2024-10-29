// ignore_for_file: unused_local_variable

void main() {
  var name = 'Alice'; // inferred as String
  
  dynamic something = 'Hello';
  something = 42; // Now it's an integer

  final city = 'New York'; // immutable
  const PI = 3.14; // compile-time constant

  int number = 10;
  double price = 19.99;
  String greeting = 'Hello, world!';
  bool isValid = true;

  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  //Count Indexes from zero|0: 0, 1, 2
  
  Map<String, int> scores = {'Alice': 95, 'Bob': 85};

  String? nullableString = null; // Nullable type
}
