-- Author table
CREATE TABLE Author (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL
);

-- Insert sample data into Author
INSERT INTO Author (First_Name, Last_Name) VALUES 
('George', 'Orwell'),
('Jane', 'Austen'),
('Mark', 'Twain'),
('Virginia', 'Woolf');

-- Test query
SELECT * FROM Author;