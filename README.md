# Library Management System

A database-driven Library Management System built using HTML, CSS, and SQL. The project provides an interface for browsing books, viewing book information, and managing borrowing-related data.

## About the Project

The Library Management System was created to demonstrate the use of a relational database with a web-based interface.

The project organizes library information using SQL while providing HTML pages that allow users to interact with library-related information.

The project demonstrates concepts including:

- Relational database design
- SQL queries
- Database schemas
- Data organization
- HTML page structure
- CSS styling
- Book browsing and borrowing workflows

## Features

- Browse available books
- View book details
- View library information through a web interface
- Borrow books
- Store book information in a database
- Organize library records using SQL
- Use predefined database data
- Structured and reusable HTML templates

## Technologies Used

### Frontend

- HTML5
- CSS3

### Database

- SQL
- Relational database design

### Development Tools

- Visual Studio Code
- Git
- GitHub

## Project Structure

```text
Library-Management-System/
│
├── frontend/
│   └── index.html
│
├── sql/
│   ├── data.sql
│   └── schema.sql
│
├── static/
│   └── styles.css
│
├── templates/
│   ├── base.html
│   ├── book_detail.html
│   ├── borrow.html
│   └── browse.html
│
├── .gitignore
└── README.md
```

## Main Components

### Frontend

The `frontend` directory contains the main HTML interface for the project.

```text
frontend/index.html
```

### Templates

The `templates` directory contains pages used for different parts of the Library Management System.

**base.html**  
Provides the base structure used by the interface.

**browse.html**  
Displays the book browsing interface.

**book_detail.html**  
Displays detailed information about a selected book.

**borrow.html**  
Provides the interface related to borrowing books.

### Styling

The application's styling is located in:

```text
static/styles.css
```

This file controls the visual appearance and layout of the HTML pages.

## Database

The `sql` directory contains the SQL files used by the project.

### schema.sql

```text
sql/schema.sql
```

Defines the structure of the database, including the tables and relationships required by the Library Management System.

### data.sql

```text
sql/data.sql
```

Contains data used to populate the database.

Keeping the schema and data in separate files makes it easier to recreate and test the database.

## How It Works

The project separates the user interface from the database structure.

```text
User
  ↓
HTML Interface
  ↓
Library Operations
  ↓
SQL Database
  ↓
Library Data
```

The HTML pages provide the visual interface while SQL is used to structure and manage the library's data.

## Database Setup

To recreate the database, use the SQL files located in:

```text
sql/
```

First execute:

```text
schema.sql
```

This creates the required database structure.

Then execute:

```text
data.sql
```

This adds the project's sample data.

The exact commands used to import these files depend on the SQL database software being used.

## Screenshots

### Main Page

Add a screenshot of the Library Management System home page here.

### Browse Books

Add a screenshot showing the book browsing interface here.

### Book Details

Add a screenshot showing an individual book's information here.

### Borrow Book

Add a screenshot showing the borrowing interface here.

## What I Learned

This project helped me gain experience working with relational databases and web development.

Some of the concepts I practiced include:

- Creating SQL database schemas
- Organizing relational data
- Writing SQL statements
- Populating databases with sample data
- Structuring HTML pages
- Styling web pages with CSS
- Organizing a project into separate directories
- Using Git and GitHub for version control

## Future Improvements

Possible future improvements include:

- User login and account management
- Administrator interface
- Book search and filtering
- Due-date tracking
- Overdue book notifications
- Fine calculation
- Improved responsive design
- Additional database queries and reports
- Backend integration for dynamic database access

## Author

**Cameron Askins**

Computer Science Student  
Georgia Southern University

GitHub: NitNit-1738