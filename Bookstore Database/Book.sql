-- Book (linked to publishers)
CREATE TABLE Book (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Genre VARCHAR(50),
    Publication_Year INT,
    Price DECIMAL(10, 2),
    PublisherID INT NOT NULL,
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
);

-- Insert sample data into Book
-- Assumes PublisherID 1 to 3 already exist in the Publisher table
INSERT INTO Book (Title, Genre, Publication_Year, Price, PublisherID) VALUES
('1984', 'Dystopian', 1949, 9.99, 1),
('Pride and Prejudice', 'Romance', 1813, 12.50, 2),
('Adventures of Huckleberry Finn', 'Adventure', 1884, 11.00, 3),
('To the Lighthouse', 'Modernist', 1927, 10.75, 1);

-- Test query
SELECT * FROM Book;