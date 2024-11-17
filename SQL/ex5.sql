USE library;


-- Using the HAVING Clause to find genres with more than two books assigned to them.
SELECT bg.genreType, COUNT(*) AS totalBooks
FROM bookGenre bg
GROUP BY bg.genreType
HAVING COUNT(*) > 2;

-- List All Genres of Books Borrowed by a Specific Borrower Using a Subquery
SELECT DISTINCT bg.genreType
FROM bookGenre bg
WHERE bg.ISBN IN (
    SELECT br.ISBN
    FROM borrowings br
    WHERE br.borrowerID = 1
);

-- List Borrowers with Overdue Books using JOIN 
SELECT b.borrowerID, bc.bName, br.borrowDate, br.returnDate
FROM borrowings br
JOIN borrower b ON br.borrowerID = b.borrowerID
JOIN borrowerContact bc ON b.bEmail = bc.bEmail
WHERE br.status = 'Late' AND br.returnDate < CURRENT_DATE;

-- find books with high reviews using LEFT JOIN
SELECT b.title, AVG(r.rating) AS average_rating
FROM book b
LEFT JOIN reviews r ON b.ISBN = r.ISBN
GROUP BY b.title
HAVING average_rating >= 6;

-- Find All Books Borrowed by a Specific Borrower Using Aggregate
SELECT b.title, COUNT(br.borrowDate) AS totalBorrowed
FROM book b
JOIN borrowings br ON b.ISBN = br.ISBN
WHERE br.borrowerID = 4
GROUP BY b.title
HAVING COUNT(br.borrowDate) > 0;



-- Joining Multiple Tables to find all books, their authors, and the borrowers who borrowed them.
SELECT b.title, ba.author, br.borrowerID
FROM book b
JOIN bookAuthor ba ON b.ISBN = ba.ISBN
JOIN borrowings br ON b.ISBN = br.ISBN;

-- Retrieve Borrower and Book Details for Current Borrowings
SELECT b.borrowerID, bc.bName, bo.ISBN, bo.title, br.borrowDate, br.status
FROM borrowings br
JOIN borrower b ON br.borrowerID = b.borrowerID
JOIN borrowerContact bc ON b.bEmail = bc.bEmail
JOIN book bo ON br.ISBN = bo.ISBN
WHERE br.status <> 'Returned';


-- Find Borrowers Who Borrowed Books in a Specific Genre
SELECT DISTINCT bo.borrowerID, bo.bEmail
FROM borrower bo
JOIN borrowings br ON bo.borrowerID = br.borrowerID
JOIN bookGenre bg ON br.ISBN = bg.ISBN
WHERE bg.genreType = 'Adventure';


-- count of book for each genre 
SELECT g.genreType, COUNT(bg.ISBN) AS book_count
FROM genre g
JOIN bookGenre bg ON g.genreType = bg.genreType
GROUP BY g.genreType
ORDER BY book_count DESC;


-- Books that are reviewed
SELECT ISBN
FROM reviews
UNION
-- Books that are borrowed
SELECT ISBN
FROM borrowings;

