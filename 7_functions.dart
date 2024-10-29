void greet() {
  print('Hello, Dart!');
}

void greetWithParam(String name) {
  print('Hello, $name!');
}

void greetWithNamedParam({String? firstName, String? lastName}) {
  print('Hello, $firstName $lastName!');
}

void greetWithDefaultNamedParam({String firstName = 'Guest'}) {
  print('Hello, $firstName!');
}

void describe([String? name, int? age]) {
  print('Name: $name, Age: $age');
}

int add(int a, int b) {
  return a + b;
}

int addArrowFunction(int a, int b) => a + b;

Function createMultiplier(int multiplier) {
  return (int value) => value * multiplier;
}

void applyFunction(int x, Function f) {
  print(f(x));
}

void main() {
  greet(); // Calling the function

  greetWithParam("User"); // Calling the function with Positional Parameters

  greetWithNamedParam(
      firstName: 'John',
      lastName: 'Doe'); // Calling the function with Named Parameters

  greetWithNamedParam(
      firstName:
          'Alice'); // Calling the function with Named Parameters (Didn't pass the nullable param)

  greetWithDefaultNamedParam(); // Calling the function with Named Parameters(If nothing is given as argument the function will use the default value set for the parameter)

  describe('John',
      25); // Calling the function with Optional Parameters, Both parameters are passed
  describe(); // Calling the function with Optional Parameters, No parameters are passed

  int sum = add(3, 4); // Returns the sum of 3 and 4
  print('Sum: $sum');

  print(addArrowFunction(5, 6)); // Output: 11

  // Anonymous Functions
  var list = ['Apple', 'Banana', 'Cherry'];

  list.forEach((item) {
    print(item);
  });

  // Closures
  var timesTwo = createMultiplier(2);
  print(timesTwo(4)); // Output: 8

  // Higher-Order Functions
  applyFunction(5, (x) => x * x); // Output: 25
}
