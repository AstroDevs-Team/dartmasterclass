Future<String> fetchUserOrder() {
  // Simulate a network delay
  return Future.delayed(Duration(seconds: 3), () => 'Large Latte');
}

Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // Emit a value
  }
}

void main() async {
  print('Fetching user order...');

  fetchUserOrder().then((order) {
    print('User order: $order');
  }).catchError((error) {
    print('Error: $error');
  });

  print('Fetching user order...');

  try {
    String order = await fetchUserOrder();
    print('User order: $order');
  } catch (error) {
    print('Error: $error');
  }

  await for (int number in numberStream()) {
    print(number);
  }

  Future<String> order1 = Future.delayed(Duration(seconds: 3), () => 'Order 1');
  Future<String> order2 = Future.delayed(Duration(seconds: 2), () => 'Order 2');
  Future<String> order3 = Future.delayed(Duration(seconds: 1), () => 'Order 3');

  List<String> orders = await Future.wait([order1, order2, order3]);
  print(orders); // Prints: [Order 1, Order 2, Order 3]
}
