import 'dart:io';

void main() {
  print('Enter your name:');
  String? name = stdin.readLineSync();

  print('Enter your age:');
  String? ageInput = stdin.readLineSync();
  int age = int.parse(ageInput ?? '0');  // Default to 0 if no input

  print('Enter your favorite hobbies (comma-separated):');
  String? hobbiesInput = stdin.readLineSync();
  List<String> hobbies = hobbiesInput?.split(',') ?? [];

  print('\n--- User Profile ---');
  print('Name: ${name ?? 'Anonymous'}');
  print('Age: $age');
  print('Hobbies: ${hobbies.isNotEmpty ? hobbies.join(', ') : 'None'}');
}
