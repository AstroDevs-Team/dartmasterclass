import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int target = random.nextInt(100); // Random number between 0 and 99
  int attempts = 0;
  int guess;

  print('Welcome to the Number Guessing Game!');
  print('I have selected a number between 0 and 99. Try to guess it!');

  do {
    attempts++;
    stdout.write('Enter your guess: ');
    guess = int.parse(stdin.readLineSync()!);

    if (guess < target) {
      print('Too low! Try again.');
    } else if (guess > target) {
      print('Too high! Try again.');
    } else {
      print('Congratulations! You guessed the number in $attempts attempts.');
    }
  } while (guess != target);
}
