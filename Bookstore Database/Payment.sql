-- Payments table
CREATE TABLE Payment (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    Payment_Method VARCHAR(50) NOT NULL,
    Payment_Amount DECIMAL(10,2) NOT NULL,
    Payment_Date DATE NOT NULL,
    OrderID INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
