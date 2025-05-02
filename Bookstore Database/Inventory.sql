-- Inventory table tied to books
CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    BookID INT,
    Quantity INT NOT NULL,
    Restock_Threshold INT NOT NULL
);

-- Insert sample data into Inventory
INSERT INTO Inventory (InventoryID, BookID, Quantity, Restock_Threshold) VALUES
(1, 1, 25, 10),  -- 1984
(2, 2, 5, 8),    -- Pride and Prejudice
(3, 3, 0, 6),    -- Huckleberry Finn
(4, 4, 12, 5);   -- To the Lighthouse

-- Test query:
SELECT 
    i.InventoryID,
    b.Title,
    i.Quantity,
    i.Restock_Threshold
FROM Inventory i
JOIN Book b ON i.BookID = b.BookID
WHERE i.Quantity < i.Restock_Threshold;