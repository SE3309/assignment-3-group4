SET SQL_SAFE_UPDATES = 0;

INSERT INTO borrowings (borrowDate, returnDate, status, borrowerID, ISBN)
SELECT '2024-11-01', '2024-11-15', 'On Hold', 100, ISBN
FROM book
WHERE publishedDate > '2000-01-01';

UPDATE borrowings
SET status = 'Late'
WHERE returnDate < CURDATE() AND status != 'Returned';

DELETE FROM bookBorrowings
WHERE borrowingID IN (
    SELECT borrowingID FROM borrowings
    WHERE borrowerID IN (
        SELECT borrowerID FROM borrower
        WHERE membershipDate < '2020-01-01'
    )
);

DELETE FROM borrowings
WHERE borrowerID IN (
    SELECT borrowerID FROM borrower
    WHERE membershipDate < '2020-01-01'
);

SET SQL_SAFE_UPDATES = 1;
