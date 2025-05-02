-- Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Email VARCHAR(255) NOT NULL,
    Phone_Number VARCHAR(20),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50)
);

-- Insert sample data into Customer
INSERT INTO Customer (CustomerID, Email, Phone_Number, First_Name, Last_Name) VALUES
(1, 'alice@example.com', '123-456-7890', 'Alice', 'Johnson'),
(2, 'bob@example.com', '234-567-8901', 'Bob', 'Smith'),
(3, 'carol@example.com', '345-678-9012', 'Carol', 'White'),
(4, 'david@example.com', NULL, 'David', 'Brown');

-- Test query
SELECT * FROM Customer;
