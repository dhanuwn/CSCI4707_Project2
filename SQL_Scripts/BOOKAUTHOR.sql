-- BOOKAUTHOR.sql
CREATE TABLE BookAuthor (
    BookAuthorID INT PRIMARY KEY,
    BookID INT,
    AuthorID INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);
