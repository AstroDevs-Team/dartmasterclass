import 'dart:collection';

void main() {
  // Lists
  // Creating a list of integers
  List<int> numbers = [10, 20, 30, 40];
  print(numbers); // Output: [10, 20, 30, 40]

  // Adding an element
  numbers.add(50);
  print(numbers); // Output: [10, 20, 30, 40, 50]

  // Removing an element
  numbers.remove(20);
  print(numbers); // Output: [10, 30, 40, 50]

  // Accessing elements by index
  print(numbers[0]); // Output: 10

  // Updating an element
  numbers[1] = 35;
  print(numbers); // Output: [10, 35, 40, 50]

  // Iterating over a list
  for (int number in numbers) {
    print(number); // Output: 10, 35, 40, 50
  }

  List<int> numbers2 = [1, 2, 3, 4, 5];

  // Doubling each number using .map()
  var doubled = numbers2.map((n) => n * 2).toList();
  print(doubled); // Output: [2, 4, 6, 8, 10]

  // Summing all numbers using .reduce()
  var sum = numbers2.reduce((value, element) => value + element);
  print(sum); // Output: 15

  // =========================
  // Sets

  Set<String> fruits = {'Apple', 'Banana', 'Orange'};
  print(fruits); // Output: {Apple, Banana, Orange}

  // Adding an element
  fruits.add('Mango');
  print(fruits); // Output: {Apple, Banana, Orange, Mango}

  // Trying to add a duplicate element (no change)
  fruits.add('Banana');
  print(fruits); // Output: {Apple, Banana, Orange, Mango}

  // Removing an element
  fruits.remove('Orange');
  print(fruits); // Output: {Apple, Banana, Mango}

  // =========================
  // Maps
  // Creating a map with string keys and integer values
  Map<String, int> ages = {
    'John': 30,
    'Alice': 25,
    'Bob': 40,
  };
  print(ages); // Output: {John: 30, Alice: 25, Bob: 40}

  // Adding a new key-value pair
  ages['Charlie'] = 35;
  print(ages); // Output: {John: 30, Alice: 25, Bob: 40, Charlie: 35}

  // Updating a value
  ages['Alice'] = 28;
  print(ages); // Output: {John: 30, Alice: 28, Bob: 40, Charlie: 35}

  // Removing a key-value pair
  ages.remove('Bob');
  print(ages); // Output: {John: 30, Alice: 28, Charlie: 35}

  // Accessing a value by its key
  print(ages['John']); // Output: 30

  // Iterating through a map
  ages.forEach((key, value) {
    print('$key is $value years old');
  });
  // Output:
  // John is 30 years old
  // Alice is 28 years old
  // Charlie is 35 years old

  // ======================================
  // Queue
  Queue<int> queue = Queue<int>();
  queue.addAll([10, 20, 30]);

  // Adding at the end
  queue.add(40);

  // Removing from the start (FIFO - First In, First Out)
  var firstElement = queue.removeFirst();
  print(firstElement); // Output: 10
  print(queue); // Output: {20, 30, 40}
}
