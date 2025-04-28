CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Position ENUM('Cashier', 'Manager')
);
