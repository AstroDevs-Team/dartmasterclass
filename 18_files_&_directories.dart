import 'dart:io';

Future<void> readFile() async {
  try {
    final file = File('example.txt');
    String contents = await file.readAsString();
    print(contents); // Outputs the content of the file
  } catch (e) {
    print('Error reading file: $e');
  }
}

void readFileSync() {
  try {
    final file = File('example.txt');
    String contents = file.readAsStringSync();
    print(contents);
  } catch (e) {
    print('Error reading file: $e');
  }
}

Future<void> writeFile() async {
  final file = File('example.txt');
  try {
    await file.writeAsString('Hello, Dart!');
    print('File written successfully');
  } catch (e) {
    print('Error writing to file: $e');
  }
}

Future<void> appendFile() async {
  final file = File('example.txt');
  try {
    await file.writeAsString('\nAppending new line', mode: FileMode.append);
    print('Data appended successfully');
  } catch (e) {
    print('Error appending to file: $e');
  }
}
void createDirectory() {
  final directory = Directory('new_folder');
  directory.create().then((dir) => print('Directory created: ${dir.path}'));
}
void listDirectoryContents() {
  final directory = Directory('.');
  directory.list(recursive: false).forEach((entity) {
    print(entity.path);
  });
}
void deleteFile() async {
  final file = File('example.txt');
  try {
    await file.delete();
    print('File deleted');
  } catch (e) {
    print('Error deleting file: $e');
  }
}
void deleteDirectory() async {
  final directory = Directory('new_folder');
  try {
    await directory.delete(recursive: true);
    print('Directory deleted');
  } catch (e) {
    print('Error deleting directory: $e');
  }
}

void main() {
  readFile();

  // Call other functions from above to use them
}
