class ShoppingCart {
  // Map to store product names as keys and their quantities as values
  Map<String, int> items = {};

  // Add an item to the cart
  void addItem(String product, int quantity) {
    if (items.containsKey(product)) {
      items[product] = items[product]! + quantity;
    } else {
      items[product] = quantity;
    }
    print('$quantity x $product added to the cart');
  }

  // Remove an item from the cart
  void removeItem(String product) {
    if (items.containsKey(product)) {
      items.remove(product);
      print('$product removed from the cart');
    } else {
      print('$product is not in the cart');
    }
  }

  // Display the contents of the cart
  void displayCart() {
    if (items.isEmpty) {
      print('Your cart is empty');
    } else {
      print('Your cart contains:');
      items.forEach((product, quantity) {
        print('$quantity x $product');
      });
    }
  }
}

void main() {
  ShoppingCart cart = ShoppingCart();

  cart.addItem('Apple', 2);
  cart.addItem('Banana', 3);
  cart.addItem('Orange', 1);

  cart.displayCart();
  // Output:
  // 2 x Apple
  // 3 x Banana
  // 1 x Orange

  cart.removeItem('Banana');
  cart.displayCart();
  // Output:
  // 2 x Apple
  // 1 x Orange

  cart.addItem("Orange", 2);
  // Output:
  // 2 x Apple
  // 3 x Orange
}
