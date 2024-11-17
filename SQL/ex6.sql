SET SQL_SAFE_UPDATES = 0;

INSERT INTO borrowings (borrowDate, dueDate, status, borrowerID, ISBN)
SELECT CURDATE(), CURDATE() + INTERVAL 14 DAY, 'Borrowed', fg.borrowerID, b.ISBN
FROM (
    SELECT br.borrowerID, bg.genreType
    FROM borrowings br
    JOIN bookGenre bg ON br.ISBN = bg.ISBN
    GROUP BY br.borrowerID, bg.genreType
    HAVING COUNT(*) = (
        SELECT MAX(borrowCount)
        FROM (
            SELECT br2.borrowerID, bg2.genreType, COUNT(*) AS borrowCount
            FROM borrowings br2
            JOIN bookGenre bg2 ON br2.ISBN = bg2.ISBN
            GROUP BY br2.borrowerID, bg2.genreType
        ) AS BorrowCounts
        WHERE BorrowCounts.borrowerID = br.borrowerID
    )
) AS fg
JOIN book b ON b.ISBN IN (
    SELECT bg.ISBN FROM bookGenre bg WHERE bg.genreType = fg.genreType
)
WHERE b.availabilityStatus = 'Available' AND b.rating >= 4.5;
UPDATE borrowings
SET status = 'Late'
WHERE returnDate < CURDATE() AND status = 'Borrowed';

DELETE FROM borrowings
WHERE borrowerID IN (
    SELECT borrowerID
    FROM borrower
    WHERE borrowerID NOT IN (
        SELECT DISTINCT borrowerID
        FROM borrowings
        WHERE borrowDate >= CURDATE() - INTERVAL 3 YEAR
    )
);

SET SQL_SAFE_UPDATES = 1;
