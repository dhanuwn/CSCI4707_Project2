-- Payments table
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    Payment_Method VARCHAR(50) NOT NULL,
    Payment_Amount DECIMAL(10,2) NOT NULL,
    Payment_Date DATE NOT NULL
);

-- Insert sample data into Payment
INSERT INTO Payment (PaymentID, Payment_Method, Payment_Amount, Payment_Date) VALUES
(1, 'Credit Card', 25.99, '2025-05-01'),
(2, 'PayPal', 42.75, '2025-05-02'),
(3, 'Gift Card', 15.00, '2025-05-02'),
(4, 'Debit Card', 60.50, '2025-05-03');

-- Test query:
SELECT * 
FROM Payment 
WHERE Payment_Amount > 30.00;