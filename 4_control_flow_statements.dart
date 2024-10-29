void main() {
  // =================================
  // Conditional Statements
  // =================================

  int age = 20;

  if (age >= 18) {
    // Code to execute if condition is true
    print('You are an adult.');
  } else {
    // Code to execute if condition is false
    print('You are a minor.');
  }

  int score = 75;

  if (score >= 90) {
    print('Grade: A');
  } else if (score >= 80) {
    print('Grade: B');
  } else if (score >= 70) {
    print('Grade: C');
  } else {
    print('Grade: D');
  }


  // =================================
  // Switch-case Statement
  // =================================
  String day = 'Tuesday';

  switch (day) {
    case 'Monday':
      print('Start of the work week!');
      break;
    case 'Wednesday':
      print('Midweek!');
      break;
    case 'Friday':
      print('Weekend is almost here!');
      break;
    default:
      print('Just another day.');
  }


  // =================================
  // For Loop
  // =================================
  for (int i = 0; i < 5; i++) {
    print('i = $i');
  }

  // =================================
  // While Loop
  // =================================
  int count = 0;

  while (count < 3) {
    print('Count = $count');
    count++;
  }


  // =================================
  // do-while Loop
  // =================================
  do {
    print('Count = $count');
    count++;
  } while (count < 3);

  // =================================
  // for-in Loop
  // =================================
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];

  for (var fruit in fruits) {
    print(fruit);
  }


  // =================================
  // Control Flow Modifiers | break;
  // =================================
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      break;
    }
    print('i = $i');
  }

  // =================================
  // Control Flow Modifiers | continue;
  // =================================
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      continue;
    }
    print('i = $i');
  }
}
