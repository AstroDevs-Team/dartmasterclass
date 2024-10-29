void checkAge(int age) {
  if (age < 18) {
    throw Exception("You must be 18 or older.");
  } else {
    print("Access granted.");
  }
}

class CustomException implements Exception {
  String cause;

  // Constructor
  CustomException(this.cause);

  // Overriding the toString method to provide a custom message
  @override
  String toString() {
    return "CustomException: $cause";
  }
}

void main() {
  try {
    var result = 10 ~/ 0;
    print(result);
  } on UnsupportedError {
    print("Cannot divide by zero.");
  } catch (e) {
    print("An error occurred: $e");
  } finally {
    print("This is the finally block.");
  }

  try {
    checkAge(15); // This will throw an exception
  } catch (e) {
    print(e);
  }

  try {
    throw CustomException("This is a custom exception");
  } catch (e) {
    print(e); // Now it will print: CustomException: This is a custom exception
  }
}
