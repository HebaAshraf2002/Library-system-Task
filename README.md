# Library-system-Task
# overview
a simple library system that manages borrowed and returned books.
# What Does This Code Do?
1. Book Management
- Each book has an ID, title, and a borrowed status (true/false).
- You can add books to the library and view their details.
2. User Management
- Each user has an ID and a name.
- Users can borrow books from the library.
3. Library Operations
- Books and users can be added to the library.
- You can check which books are available for borrowing.
- Users can borrow books if they are available, and the system updates the status of the book.
- The library can display details about all books and users.
# How the Code Works?
1. Books Class:
  Constructor: Initializes the book's ID, title, and borrowed status.
  displayInfo(): Prints the book’s details (ID, title, and borrowed status).
2. User Class:
  Constructor: Initializes the user with an ID and name.
  displayInfo(): Prints the user’s details (ID and name).
3. Library Class:
  addBook(): Adds a book to the library and prints a confirmation message.
  addUser(): Adds a user to the library and prints a confirmation message.
  returnBook(): Displays the books that are available for borrowing.
  borrowBook(): Allows a user to borrow a book if it is available and adds the user to the library if not already registered.
  displayInfo(): Displays the details of all books and users in the library.
