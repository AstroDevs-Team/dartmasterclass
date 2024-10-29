class Car {
  String color;
  String model;

  Car(this.color, this.model); // Constructor

  void drive() {
    print('The $color $model is driving!');
  }
}

class Person {
  String name; // Field to store the person's name
  int age; // Field to store the person's age

  // Default constructor
  Person(this.name, this.age); // Initializes fields using parameters
}

class Rectangle {
  double width;
  double height;

  // Default constructor
  Rectangle(this.width, this.height);

  // Named constructor for creating a square
  Rectangle.square(double side)
      : this(side, side); // Sets both width and height to the same value
}

class Singleton {
  static final Singleton _instance =
      Singleton._internal(); // Private constructor
  factory Singleton() {
    return _instance; // Returns the same instance every time
  }

  Singleton._internal(); // Named private constructor

  void showMessage() {
    print('This is a singleton instance.');
  }
}

class Circle {
  final double radius;
  final double area;

  // Constructor with an initializer list to calculate area
  Circle(this.radius)
      : area = 3.14 * radius * radius; // Calculates area based on radius

  void display() {
    print('Circle: radius = $radius, area = $area');
  }
}


void main() {
  var myCar = Car('red', 'Toyota');
  myCar.drive(); // Output: The red Toyota is driving!

  Person person = Person('Alice', 30); // Creating a Person object
  print('Name: ${person.name}, Age: ${person.age}');

  Rectangle rect = Rectangle(10, 5); // Creating a Rectangle object
  print('Rectangle: width = ${rect.width}, height = ${rect.height}');

  Rectangle square = Rectangle.square(4); // Using the named constructor
  print('Square: width = ${square.width}, height = ${square.height}');

  Singleton s1 = Singleton(); // First call to Singleton
  Singleton s2 = Singleton(); // Second call to Singleton

  print(identical(
      s1, s2)); // Prints true, both references point to the same instance
  s1.showMessage(); // Calls a method on the singleton instance

  Circle circle = Circle(5); // Creating a Circle object
  circle.display(); // Displays the radius and area
}
