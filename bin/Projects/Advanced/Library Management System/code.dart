void main() {
  Books book1 = Books(1, "anything", true);
  book1.displayInfo();

  Library library = Library();

  // Adding Islamic books
  library.addBook(Books(1, 'The Qur\'an'));
  library.addBook(Books(2, 'Riyad as-Salihin (The Meadows of the Righteous)'));
  library.addBook(Books(3, 'Fortress of the Muslim (Hisnul-Muslim)'));
  library.addBook(Books(4, 'Sahih al-Bukhari'));
  library.addBook(Books(5, 'Sahih Muslim'));

  // Adding other books
  library.addBook(Books(6, 'The Great Gatsby'));
  library.addBook(Books(7, '1984'));
  library.addBook(Books(8, 'To Kill a Mockingbird'));

  // Adding users
  library.addUser(Users(1, 'Mohammed'));
  library.addUser(Users(2, 'Eid'));

  // Borrowing and returning books
  library.borrowBook(1, 1); // Mohammed borrows "The Qur'an"
  library.borrowBook(2, 2); // Eid borrows "Riyad as-Salihin"
  library.returnBook(1); // Mohammed returns "The Qur'an"

  library.returnBook(3); // Book not borrowed
  library.borrowBook(9, 2); // Book not found
  // Display final state of the library
  library.displayInfo();
}

// 1 - Books Class has attributes (id, title, borrowed) ,
//     and displayInfo method.
class Books {
  late int id;
  late String title;
  bool borrowd;

  Books(this.id, this.title, [this.borrowd = false]);

  void displayInfo() {
    print("Book ID : $id, Title : $title, Borrowed : $borrowd");
  }
}

// 2 - Userd Class has attributes (id, name) ,
//     and displayInfo method.

class Users {
  late int id;
  late String name;

  Users(this.id, this.name);

  void displayInfo() {
    print("User ID : $id, Name : $name");
  }
}

// 3 - Library Class has attributes (list of books , list of users) ,
//     and methods (addBook , return book , borrowBook ,
//     displayInfo).

class Library {
  List<Books> books = [];
  List<Users> users = [];

  void addBook(Books book) {
    books.add(book);
    print("Book ${book.title} is added");
  }

  void addUser(Users user) {
    users.add(user);
    print("User ${user.name} is added");
  }

  void borrowBook(int bookId, int userId) {
    // Search for the book with the given ID
    Books? book;

    for (var b in books) {
      if (b.id == bookId) {
        book = b;
        break;
      }
    }

    if (book == null) {
      print("Book not found!!");
      return;
    }

    if (book.borrowd) {
      print("Sorry, This book is borrowed");
      return;
    }

    book.borrowd = true;

    print("User with $userId borrowed book: ${book.title}");
  }

  void returnBook(int bookId) {
    // Search for the book with the given ID
    Books? book;

    for (var b in books) {
      if (b.id == bookId) {
        book = b;
        break;
      }
    }

    if (book == null) {
      print("Book not found!!");
      return;
    }

    if (!book.borrowd) {
      print("This book wasn't borrowed!!");
      return;
    }

    book.borrowd = false;

    print("Book with $bookId is returned");
  }

  void displayInfo() {
    print('\nLibrary Books:');
    for (var book in books) {
      book.displayInfo();
    }
    print('\nLibrary Users:');
    for (var user in users) {
      user.displayInfo();
    }
  }
}
