-- Book author (M:N between books and author)
CREATE TABLE BookAuthor (
    BookAuthorID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT NOT NULL,
    AuthorID INT NOT NULL,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);
