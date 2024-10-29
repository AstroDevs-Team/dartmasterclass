import 'dart:convert';
import 'dart:math';
import 'dart:io';

void main() async {
  var random = Random();

  // Generate a random integer between 0 and 99
  int randomNumber = random.nextInt(100);
  print('Random number: $randomNumber');

  // Calculate the square root of 16
  double sqrtValue = sqrt(16);
  print('Square root of 16 is: $sqrtValue');

  // ==================================

  // Create a map
  Map<String, dynamic> user = {'name': 'Alice', 'age': 25};

  // Convert the map to a JSON string
  String jsonString = jsonEncode(user);
  print('JSON String: $jsonString');

  // Convert the JSON string back to a map
  Map<String, dynamic> decodedUser = jsonDecode(jsonString);
  print('Decoded Map: $decodedUser');

  // ==================================

  // Read the contents of a text file
  File file = File('example.txt');

  // Check if the file exists
  if (await file.exists()) {
    String contents = await file.readAsString();
    print('File Contents: $contents');
} else {
    print('File not found');
  }
}
