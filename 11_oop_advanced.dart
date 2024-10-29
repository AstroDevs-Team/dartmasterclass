class Vehicle {
  String color;

  Vehicle(this.color);

  void display() {
    print('Vehicle color is $color');
  }
}

class Car extends Vehicle {
  String model;

  Car(String color, this.model) : super(color);

  @override
  void display() {
    print('Car color is $color and model is $model');
  }
}

abstract class Animal {
  void sound(); // Abstract method
}

class Dog extends Animal {
  @override
  void sound() {
    print('Bark');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Meow');
  }
}

mixin Swimmer {
  void swim() {
    print('Swimming');
  }
}

class Fish with Swimmer {
  // Fish class can now use the swim method
}

class MathUtils {
  static int add(int a, int b) {
    return a + b; // Static method to add two numbers
  }
}

void main() {
  Car myCar = Car('blue', 'Ford');
  myCar.display(); // Calls the overridden method

  Dog myDog = Dog(); // Creating a Dog object
  myDog.sound(); // Calls the Dog's sound method

  Cat myCat = Cat(); // Creating a Cat object
  myCat.sound(); // Calls the Cat's sound method

  Fish myFish = Fish(); // Creating a Fish object
  myFish.swim(); // Calls the mixin method

  int result = MathUtils.add(3, 4); // Calling the static method
  print('The sum is $result'); // Output: The sum is 7
}
