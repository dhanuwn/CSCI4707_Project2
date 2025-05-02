-- Books (linked to publishers)
CREATE TABLE Book (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Genre VARCHAR(50),
    Publication_Year INT,
    Price DECIMAL(10, 2),
    PublisherID INT NOT NULL,
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
);
