SET SQL_SAFE_UPDATES = 0;

INSERT INTO borrowings (borrowDate, returnDate, status, borrowerID, ISBN)
SELECT CURDATE(), CURDATE() + INTERVAL 14 DAY, 'On Hold', br.borrowerID, b.ISBN
FROM borrowings br
JOIN bookGenre bg ON br.ISBN = bg.ISBN
JOIN book b ON bg.genreType = (
    SELECT bg2.genreType
    FROM borrowings br2
    JOIN bookGenre bg2 ON br2.ISBN = bg2.ISBN
    WHERE br2.borrowerID = br.borrowerID
    GROUP BY bg2.genreType
    ORDER BY COUNT(*) DESC
    LIMIT 1
)
JOIN (
    SELECT ISBN, AVG(rating) AS avgRating
    FROM reviews
    GROUP BY ISBN
    HAVING avgRating >= 4.5
) r ON b.ISBN = r.ISBN
WHERE b.ISBN NOT IN (
    SELECT ISBN
    FROM borrowings
    WHERE status IN ('On Hold', 'Late')
)
AND NOT EXISTS (
    SELECT 1 
    FROM borrowings br3 
    WHERE br3.borrowerID = br.borrowerID 
      AND br3.ISBN = b.ISBN
);

UPDATE borrowings
SET status = 'Late'
WHERE returnDate < CURDATE() AND status = 'On Hold';

WITH LowRatedBooks AS (
    SELECT ISBN
    FROM reviews
    GROUP BY ISBN
    HAVING COUNT(reviewID) < 5 AND AVG(rating) < 2
)

DELETE FROM reviews
WHERE ISBN IN (SELECT ISBN FROM LowRatedBooks);
 
SET SQL_SAFE_UPDATES = 1;
