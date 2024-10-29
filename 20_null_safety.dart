// ignore_for_file: unused_local_variable

void main() {
  int number; // Non-nullable: must be assigned a value before use.
  int? nullableNum; // Nullable: can be assigned null or an integer.

  String name = 'John'; // Non-nullable, must have a value.
  String? nickname = null; // Nullable, can be assigned null.

  String? maybeName = 'John';
  int? nameLength =
      maybeName?.length; // Safe: returns null if maybeName is null.
  int guaranteedLength =
      maybeName!.length; // Unsafe: will throw an error if maybeName is null.

  Contact contact = Contact(name: 'Alice');
  print(contact.nickname?.toUpperCase() ?? 'No nickname');
}

class User {
  late String name;

  void initializeUser() {
    name = 'Alice';
  }
}

class Contact {
  String name;
  String? nickname; // Nullable

  Contact({required this.name, this.nickname});
}
