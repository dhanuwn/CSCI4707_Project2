-- Employee and their managers table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Position VARCHAR(20) NOT NULL,
    ManagerID INT
);

-- Insert sample data into Employee
INSERT INTO Employee (EmployeeID, First_Name, Last_Name, Position, ManagerID) VALUES
(1, 'Alice', 'Green', 'Manager', NULL),
(2, 'Bob', 'Gray', 'Sales', 1),
(3, 'Carol', 'Black', 'Support', 1),
(4, 'David', 'White', 'Manager', NULL),
(5, 'Eva', 'Stone', 'Developer', 4);

-- Test query:
SELECT 
    e.EmployeeID,
    e.First_Name AS Employee_First,
    e.Last_Name AS Employee_Last,
    e.Position,
    m.First_Name AS Manager_First,
    m.Last_Name AS Manager_Last
FROM Employee e
LEFT JOIN Employee m ON e.ManagerID = m.EmployeeID;