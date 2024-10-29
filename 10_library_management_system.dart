class Book {
  String title;
  String author;
  bool isAvailable;

  // Constructor
  Book(this.title, this.author) : isAvailable = true;

  // Method to display book details
  void displayDetails() {
    print('Title: $title, Author: $author, Available: $isAvailable');
  }

  // Method to update the book's availability
  void borrowBook() {
    if (isAvailable) {
      isAvailable = false;
      print('$title has been borrowed.');
    } else {
      print('$title is already borrowed.');
    }
  }

  void returnBook() {
    if (!isAvailable) {
      isAvailable = true;
      print('$title has been returned.');
    } else {
      print('$title was not borrowed.');
    }
  }
}

class User {
  String name;
  List<Book> borrowedBooks;

  // Constructor
  User(this.name) : borrowedBooks = [];

  // Method to borrow a book
  void borrow(Book book) {
    if (book.isAvailable) {
      borrowedBooks.add(book);
      book.borrowBook();
    } else {
      print('Sorry, ${book.title} is not available.');
    }
  }

  // Method to return a book
  void returnBook(Book book) {
    if (borrowedBooks.contains(book)) {
      borrowedBooks.remove(book);
      book.returnBook();
    } else {
      print('You did not borrow ${book.title}.');
    }
  }

  // Method to display borrowed books
  void displayBorrowedBooks() {
    if (borrowedBooks.isEmpty) {
      print('$name has not borrowed any books.');
    } else {
      print('$name has borrowed the following books:');
      for (var book in borrowedBooks) {
        print('- ${book.title}');
      }
    }
  }
}

class Library {
  String name;
  List<Book> books;
  List<User> users;

  // Constructor
  Library(this.name)
      : books = [],
        users = [];

  // Method to add a book to the library
  void addBook(Book book) {
    books.add(book);
    print('${book.title} by ${book.author} added to the library.');
  }

  // Method to add a user to the library
  void addUser(User user) {
    users.add(user);
    print('${user.name} has joined the library.');
  }

  // Method to display all available books
  void displayAvailableBooks() {
    print('Available books in $name:');
    for (var book in books) {
      if (book.isAvailable) {
        book.displayDetails();
      }
    }
  }
}

void main() {
  // Create a library
  Library library = Library('City Library');

  // Create books
  Book book1 = Book('1984', 'George Orwell');
  Book book2 = Book('The Great Gatsby', 'F. Scott Fitzgerald');
  Book book3 = Book('Moby Dick', 'Herman Melville');

  // Add books to the library
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  // Create users
  User user1 = User('Alice');
  User user2 = User('Bob');

  // Add users to the library
  library.addUser(user1);
  library.addUser(user2);

  // Display available books
  library.displayAvailableBooks();

  // User borrows books
  user1.borrow(book1);
  user2.borrow(book2);

  // Display borrowed books
  user1.displayBorrowedBooks();
  user2.displayBorrowedBooks();

  // Display available books again
  library.displayAvailableBooks();

  // User returns a book
  user1.returnBook(book1);

  // Display available books after returning
  library.displayAvailableBooks();
}
