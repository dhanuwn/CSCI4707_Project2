-- Order detail table (M:N between orders and books)
CREATE TABLE OrderDetail (
    OrderID INT,
    BookID INT,
    Quantity INT NOT NULL,
    PRIMARY KEY (OrderID, BookID)
);

-- Insert sample data into OrderDetail
INSERT INTO OrderDetail (OrderID, BookID, Quantity) VALUES
(1, 1, 2),  -- Order 1: 2 copies of 1984
(1, 3, 1),  -- Order 1: 1 copy of Huckleberry Finn
(2, 2, 1),  -- Order 2: 1 copy of Pride and Prejudice
(2, 4, 3);  -- Order 2: 3 copies of To the Lighthouse

-- Test query:
SELECT od.OrderID,b.Title,od.Quantity
FROM OrderDetail od
JOIN Book b ON od.BookID = b.BookID
ORDER BY od.OrderID;