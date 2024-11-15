-- CREATE DATABASE IF NOT EXISTS library;
-- USE library;

DROP VIEW IF EXISTS BookSummary;

-- Create the first view
CREATE VIEW BookSummary AS
SELECT 
    book.ISBN,
    book.title,
    book.publishedDate,
    bookAuthor.author,
    bookGenre.genreType
FROM
    book
LEFT JOIN 
    bookAuthor ON book.ISBN = bookAuthor.ISBN
LEFT JOIN 
    bookGenre ON book.ISBN = bookGenre.ISBN;

-- Insert or update test data for BookSummary
INSERT INTO book (ISBN, title, publishedDate)
VALUES 
    ('9781234567890', 'New Book', '2024-01-01'),
    ('9780987654321', 'Another Book', '2025-01-01')
ON DUPLICATE KEY UPDATE 
    title = VALUES(title),
    publishedDate = VALUES(publishedDate);

INSERT INTO bookAuthor (ISBN, author)
VALUES 
    ('9781234567890', 'John Doe'),
    ('9780987654321', 'Jane Doe')
ON DUPLICATE KEY UPDATE 
    author = VALUES(author);

INSERT INTO bookGenre (ISBN, genreType)
VALUES 
    ('9781234567890', 'Fiction'),
    ('9780987654321', 'Non-Fiction')
ON DUPLICATE KEY UPDATE 
    genreType = VALUES(genreType);

-- Query the BookSummary view
SELECT * FROM BookSummary
WHERE publishedDate > '2000-01-01'
LIMIT 5;

DROP VIEW IF EXISTS BorrowerDetails;

-- Create the second view
CREATE VIEW BorrowerDetails AS
SELECT 
    borrower.borrowerID,
    borrower.bEmail,
    borrowerContact.bName,
    borrower.membershipDate,
    borrowings.borrowingID
FROM 
    borrower
LEFT JOIN 
    borrowerContact ON borrower.bEmail = borrowerContact.bEmail
LEFT JOIN 
    borrowings ON borrower.borrowerID = borrowings.borrowerID;

-- Insert or update test data for BorrowerDetails
INSERT INTO borrower (borrowerID, bEmail, membershipDate, bPassword)
VALUES 
    (100, 'newemail@example.com', '2024-01-01', 'securepassword')
ON DUPLICATE KEY UPDATE 
    bEmail = VALUES(bEmail),
    membershipDate = VALUES(membershipDate),
    bPassword = VALUES(bPassword);

INSERT INTO borrowerContact (bEmail, bName)
VALUES 
    ('newemail@example.com', 'Jane Doe')
ON DUPLICATE KEY UPDATE 
    bName = VALUES(bName);

INSERT INTO borrowings (borrowingID, borrowDate, returnDate, status, borrowerID, ISBN, fineID)
VALUES 
    (500, '2024-01-01', '2024-01-15', 'On Hold', 100, '00305aec-e122', NULL)
ON DUPLICATE KEY UPDATE 
    status = VALUES(status);


-- Query the BorrowerDetails view
SELECT bd.borrowerID, bd.bName, bd.borrowingID
FROM BorrowerDetails bd
JOIN borrowings b ON bd.borrowingID = b.borrowingID
WHERE b.status = 'On Hold'
LIMIT 5;