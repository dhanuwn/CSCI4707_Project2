CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Phone_Number VARCHAR(20),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50)
); 
