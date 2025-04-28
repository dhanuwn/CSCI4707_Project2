-- Bookstore Database Schema
-- Week 11 Basic SQL and Week 13 Schema Modification

-- Reset the database first, Week 13
DROP DATABASE IF EXISTS BookstoreDB;
CREATE DATABASE BookstoreDB;
USE BookstoreDB;

-- Customers table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Email VARCHAR(255) NOT NULL,
    Phone_Number VARCHAR(20),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50)
);

-- Employees and their managers
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Position VARCHAR(20) NOT NULL,
    ManagerID INT
);

-- Authors
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL
);

-- Publishers
CREATE TABLE Publisher (
    PublisherID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Contact_Information VARCHAR(255)
);

-- Books (linked to publishers)
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Genre VARCHAR(50),
    Publication_Year YEAR,
    Price DECIMAL(10,2),
    PublisherID INT
);

-- Inventory tied to books
CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    BookID INT,
    Quantity INT NOT NULL,
    Restock_Threshold INT NOT NULL
);

-- Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    Shipping_Date DATE NOT NULL,
    Order_Date DATE NOT NULL,
    CustomerID INT,
    EmployeeID INT
);

-- Payments
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    Payment_Method VARCHAR(50) NOT NULL,
    Payment_Amount DECIMAL(10,2) NOT NULL,
    Payment_Date DATE NOT NULL
);

-- Order details (M:N between orders and books)
CREATE TABLE OrderDetails (
    OrderID INT,
    BookID INT,
    Quantity INT NOT NULL,
    PRIMARY KEY (OrderID, BookID)
);

-- Book authors (M:N between books and authors)
CREATE TABLE BookAuthor (
    BookAuthorID INT PRIMARY KEY,
    BookID INT,
    AuthorID INT
);

-- Now add foreign keys
ALTER TABLE Employees
    ADD FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID);

ALTER TABLE Books
    ADD FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID);

ALTER TABLE Inventory
    ADD FOREIGN KEY (BookID) REFERENCES Books(BookID);

ALTER TABLE Orders
    ADD FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    ADD FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);

ALTER TABLE OrderDetails
    ADD FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    ADD FOREIGN KEY (BookID) REFERENCES Books(BookID);

ALTER TABLE BookAuthor
    ADD FOREIGN KEY (BookID) REFERENCES Books(BookID),
    ADD FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID);
