-- Drop and Create Database
DROP DATABASE IF EXISTS BookstoreDB;
CREATE DATABASE BookstoreDB;
USE BookstoreDB;

-- Create Tables
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Phone_Number VARCHAR(20),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Position ENUM('Cashier', 'Manager'),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);


CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50)
);


CREATE TABLE Publisher (
    PublisherID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Contact_Information VARCHAR(255)
);


CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Genre VARCHAR(50),
    Publication_Year YEAR,
    Price DECIMAL(10,2),
    PublisherID INT
);


CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    BookID INT,
    Quantity INT,
    Restock_Threshold INT
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    Shipping_Date DATE,
    Order_Date DATE,
    CustomerID INT,
    EmployeeID INT
);


CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    Payment_Method VARCHAR(50),
    Payment_Amount DECIMAL(10,2),
    Payment_Date DATE
);


CREATE TABLE OrderDetails (
    OrderID INT,
    BookID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, BookID)
);


CREATE TABLE BookAuthor (
    BookAuthorID INT PRIMARY KEY,
    BookID INT,
    AuthorID INT
);


ALTER TABLE Books
    ADD CONSTRAINT fk_books_publisher FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID);

ALTER TABLE Inventory
    ADD CONSTRAINT fk_inventory_book FOREIGN KEY (BookID) REFERENCES Books(BookID);

ALTER TABLE Orders
    ADD CONSTRAINT fk_orders_customer FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    ADD CONSTRAINT fk_orders_employee FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);

ALTER TABLE OrderDetails
    ADD CONSTRAINT fk_orderdetails_order FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    ADD CONSTRAINT fk_orderdetails_book FOREIGN KEY (BookID) REFERENCES Books(BookID);

ALTER TABLE BookAuthor
    ADD CONSTRAINT fk_bookauthor_book FOREIGN KEY (BookID) REFERENCES Books(BookID),
    ADD CONSTRAINT fk_bookauthor_author FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID);
