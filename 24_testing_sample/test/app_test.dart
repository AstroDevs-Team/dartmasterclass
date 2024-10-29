import 'package:sample/app.dart';
import 'package:test/test.dart';

void main() {
  final db = Database();

  setUp(() {
    // Code to set up before each test runs
    db.open();
  });

  tearDown(() {
    // Code to clean up after each test
    db.close();
  });

  test("Database should be open during the test", () {
    expect(db.isOpen, true);
  });

  test("Another test that requires the database to be open", () {
    expect(db.isOpen, true);
  });
}
