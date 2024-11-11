-- added ignore to avoid duplicates

INSERT IGNORE INTO book (ISBN, title, publishedDate) 
VALUES ('9780062420701', 'To Kill A Mockingbird', '1960-07-11');

INSERT IGNORE INTO book (ISBN, title, publishedDate)
VALUES 
    ('9781416980063', 'Dork Diaries', '2009-06-02'),
	('9780439064873', 'Harry Potter and the Chamber of Secrets', '1998-06-02'),
	('9780439559818', 'Geronimo Stilton: The Curse of the Cheese Pyramid', '2004-07-01');
    
INSERT IGNORE INTO book (ISBN, title, publishedDate)
SELECT * FROM (
    SELECT '9780359199259', 'Murder on the Orient Express', '1934-01-01'
    UNION ALL
    SELECT '9780141036137', 'Animal Farm', '1945-08-17'
    UNION ALL
    SELECT '9780375714832', 'Persepolis', '2007-06-27'
) AS dummy;

SELECT * FROM book;