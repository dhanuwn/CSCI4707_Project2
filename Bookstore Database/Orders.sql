-- Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    Shipping_Date DATE NOT NULL,
    Order_Date DATE NOT NULL,
    CustomerID INT,
    EmployeeID INT
);

-- Insert sample data into Orders
INSERT INTO Orders (OrderID, Shipping_Date, Order_Date, CustomerID, EmployeeID) VALUES
(1, '2025-05-03', '2025-05-01', 1, 2),
(2, '2025-05-04', '2025-05-02', 2, 3);

-- Test query:
SELECT * 
FROM Orders;