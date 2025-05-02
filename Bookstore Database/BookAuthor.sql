-- Book author (M:N between books and author)
CREATE TABLE BookAuthor (
    BookAuthorID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT NOT NULL,
    AuthorID INT NOT NULL,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

-- Insert sample data into BookAuthor
INSERT INTO BookAuthor (BookID, AuthorID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- Test query
SELECT 
    ba.BookAuthorID,
    b.Title,
    a.First_Name,
    a.Last_Name
FROM BookAuthor ba
JOIN Book b ON ba.BookID = b.BookID
JOIN Author a ON ba.AuthorID = a.AuthorID;