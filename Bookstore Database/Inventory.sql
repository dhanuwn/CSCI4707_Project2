-- Inventory table tied to books
CREATE TABLE Inventory (
    InventoryID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT NOT NULL,
    Quantity INT NOT NULL,
    Restock_Threshold INT NOT NULL,
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
);
