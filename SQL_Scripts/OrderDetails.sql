-- ORDERDETAILS.sql
CREATE TABLE OrderDetails (
    OrderID INT,
    BookID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, BookID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
