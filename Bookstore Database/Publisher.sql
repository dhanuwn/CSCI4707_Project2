-- Publisher table
CREATE TABLE Publisher (
    PublisherID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Contact_Information VARCHAR(255)
);

-- Insert sample data into Publisher
INSERT INTO Publisher (PublisherID, Name, Contact_Information) VALUES
(1, 'Secker & Warburg', 'info@seckerwarburg.com'),
(2, 'T. Egerton', 'contact@tegerton.co.uk'),
(3, 'Chatto & Windus', 'support@chatto.co.uk'),
(4, 'American Publishing Company', 'service@americanpub.com');

-- Test query:
SELECT * FROM Publisher;