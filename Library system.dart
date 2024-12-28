import 'dart:collection';

class Books {
  String _id;
  String _title;
  bool _borrowed;
  Books(this._id, this._title, this._borrowed);
  void setID(String id) {
    _id = id;
  }

  void settitle(String title) {
    _title = title;
  }

  void setBorrowed(bool borrowed) {
    _borrowed = borrowed;
  }

  String getID() {
    return _id;
  }

  String gettitle() {
    return _title;
  }

  bool getBorrowed() {
    return _borrowed;
  }

  void displayInfo() {
    print(
        "The Information of The book :\nID : $_id\nTitle : $_title\nBorrowed : ${_borrowed ? "Yes" : "No"}");
  }
}

class User {
  String _id;
  String _name;
  User(this._id, this._name);
  void setID(String id) {
    _id = id;
  }

  void setname(String name) {
    _name = name;
  }

  String getID() {
    return _id;
  }

  String getname() {
    return _name;
  }

  void displayInfo() {
    print("The information of the user :\n ID : $_id\n Name : $_name");
  }
}

class Library {
  List<Books> _books;
  List<User> _users;
  Library(this._books, this._users);

  void addBook(Books book) {
    _books.add(book);
    print("The Book ${book.gettitle()} is added in the Library");
  }

  void addUser(User user) {
    _users.add(user);
    print("The User ${user.getname()} is added");
  }

  returnbook() {
    print("The books are available in the Library ");
    for (Books book in _books) {
      if (book.getBorrowed() == false) {
        print(book.gettitle());
      }
    }
  }

  void borrowBook(String bookname, User user) {
    bool book_isExist = false;
    bool User_isExist = false;
    for (Books book in _books) {
      if (book.gettitle() == bookname) {
        book_isExist = true;
        if (book.getBorrowed() == false) {
          book.setBorrowed(true);
          print("The book ${book.gettitle()} is borrowed by ${user.getname()}");
        } else {
          print("The book ${book.gettitle()} is borrowed");
        }
      }
    }
    if (book_isExist == false) {
      print("The book $bookname is not found in the Library");
    } else {
      for (var user_Library in _users) {
        if (user_Library.getID() == user.getID()) {
          User_isExist = true;
        }
      }
      if (User_isExist == false) {
        _users.add(user);
        print("The User ${user.getname()} is added");
      }
    }
  }

  void displayInfo() {
    print("The books in the library : ");
    for (Books book in _books) {
      book.displayInfo();
    }
    print("The users in the library : ");
    for (User user in _users) {
      user.displayInfo();
    }
  }
}

void main() {
  Books book1 = new Books("123", "Taming Flame", false);
  Books book2 = new Books("456", "The Last Kingdom", false);
  Books book3 = new Books("789", "Harry Potter", true);
  List<Books> listBooks = [book1, book2, book3];
  User user1 = new User("112", "Mohamed Ali");
  User user2 = new User("113", "Ahmed Ali");
  User user3 = new User("114", "Essam Mohamed");
  List<User> listUsers = [user1, user2, user3];
  Library library = new Library(listBooks, listUsers);
  library.displayInfo();
  library.returnbook();
  Books book4 = new Books("595", "Tender Is the Night", false);
  library.addBook(book4);
  library.returnbook();
  library.borrowBook("Harry Potter", user1);
  library.borrowBook("The Elephant Tree", user1);
  User newUser = new User("228", "Noha Adel");
  library.borrowBook("The Last Kingdom", newUser);
  library.displayInfo();
}
