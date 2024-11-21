-- Disable safe updates to allow modification queries
SET SQL_SAFE_UPDATES = 0;

-- Insert new borrowings for books in the borrower's most-read genre, ensuring only highly rated books are selected
INSERT INTO borrowings (borrowDate, returnDate, status, borrowerID, ISBN)
SELECT CURDATE(), CURDATE() + INTERVAL 14 DAY, 'On Hold', br.borrowerID, b.ISBN
FROM borrowings br
    -- Join to bookGenre table to match book genres
JOIN bookGenre bg ON br.ISBN = bg.ISBN
    -- Join to book table for book details
JOIN book b ON bg.genreType = (
        -- Subquery to find the most-read genre for the borrower
    SELECT bg2.genreType
    FROM borrowings br2
    JOIN bookGenre bg2 ON br2.ISBN = bg2.ISBN
    WHERE br2.borrowerID = br.borrowerID
    GROUP BY bg2.genreType
    ORDER BY COUNT(*) DESC
    LIMIT 1
)
    -- Join to subquery selecting books with an average rating of 4.5 or higher
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

-- Update the status of books that are overdue to 'Late', using JOIN for better performance
UPDATE borrowings br
JOIN (
    SELECT borrowerID, ISBN
    FROM borrowings
    WHERE returnDate < CURDATE() AND status = 'On Hold'
) overdue
ON br.borrowerID = overdue.borrowerID AND br.ISBN = overdue.ISBN
SET br.status = 'Late';

-- Identify books with low ratings and insufficient reviews using a JOIN for deletion
DELETE r
FROM reviews r
JOIN (
    SELECT ISBN
    FROM reviews
    GROUP BY ISBN
    HAVING COUNT(reviewID) < 5 AND AVG(rating) < 2
) low_rated
ON r.ISBN = low_rated.ISBN;

-- Re-enable safe updates to prevent accidental modifications
SET SQL_SAFE_UPDATES = 1;
