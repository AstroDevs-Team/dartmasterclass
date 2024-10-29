// ignore_for_file: unused_local_variable

void main() {
  // String to int and double
  String ageText = "25";
  int.parse(ageText); // Converts to int
  double ageAsDouble = double.parse(ageText); // Converts to double

  // Error Handling
  try {
    int age = int.parse("NotANumber");
  } catch (e) {
    print("Conversion failed: $e");
  }

  // int to String and double
  int count = 30;
  String countStr = count.toString(); // "30"

  double value = 3.14159;
  String valueStr = value.toStringAsFixed(2); // "3.14"

  // int to double & double to int
  int quantity = 5;
  double quantityDouble = quantity.toDouble(); // 5.0

  double price = 9.99;
  int priceInt = price.toInt(); // 9

  // Type Interface
  var language = "Dart"; // Inferred as String
  final version = 2.14; // Inferred as double

  List<Animal> animals = [Cat(), Animal()]; // Valid assignment

  dynamic flexibleVar = 10;
  flexibleVar = "Now a string"; // No compile-time error
  Object nonNullableObj = "Text";
  Object? nullableObj = null;

  void printLength(Object? value) {
    if (value is String) {
      print(value.length); // Promoted to String within if block
    } else {
      print("Not a string");
    }
  }

  void displayAge(Object person) {
    if (person is int) {
      print((person) + 5); // Now we can safely treat it as an int
    }
  }
}

class Animal {}

class Cat extends Animal {}
