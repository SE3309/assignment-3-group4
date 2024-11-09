SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `book`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `bookAuthor`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `bookGenre`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `bookBorrowings`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `borrower`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `bBorrowings`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `borrowerContact`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `staff`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `staffContact`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `fines`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `borrowings`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `historyLog`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `reviews`;
SET FOREIGN_KEY_CHECKS=0; DROP TABLE IF EXISTS `genre`;

CREATE TABLE book (
    ISBN CHAR(13) UNIQUE NOT NULL,
    title VARCHAR(255) NOT NULL,
     publishedDate DATE NOT NULL,
    PRIMARY KEY (ISBN) );

CREATE TABLE bookAuthor (
    ISBN CHAR(13) UNIQUE NOT NULL,
    author VARCHAR(255) NOT NULL,
    FOREIGN KEY (ISBN) REFERENCES book(ISBN),
    PRIMARY KEY (ISBN) );

CREATE TABLE bookGenre (
    ISBN CHAR(13) NOT NULL,
    genreType VARCHAR(255) NOT NULL,
    FOREIGN KEY (ISBN) REFERENCES book(ISBN),
    FOREIGN KEY (genreType) REFERENCES genre(genreType),
    PRIMARY KEY (ISBN) );

CREATE TABLE bookBorrowings (
    ISBN CHAR(13) UNIQUE NOT NULL,
      borrowingID INT UNIQUE NOT NULL,
    FOREIGN KEY (ISBN) REFERENCES book(ISBN),
    FOREIGN KEY (borrowingID) REFERENCES borrowings(borrowingID),
    PRIMARY KEY (ISBN) );

  CREATE TABLE staff (
    staffID INT NOT NULL AUTO_INCREMENT,
    sEmail VARCHAR(255) UNIQUE NOT NULL,
sPassword VARCHAR(255) NOT NULL,
    jobType VARCHAR(255),
    PRIMARY KEY (staffID)
);

CREATE TABLE staffContact (
    sEmail VARCHAR(255) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY (sEmail) REFERENCES staff(sEmail),
    PRIMARY KEY (sEmail)
);

 CREATE TABLE borrower (
    borrowerID INT NOT NULL AUTO_INCREMENT,
    membershipDate DATE NOT NULL,
    bPassword VARCHAR(255) NOT NULL,
    bEmail VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY (borrowerID)
);

   CREATE TABLE bBorrowings (
    borrowerID INT NOT NULL,
 borrowingID INT NOT NULL,
    FOREIGN KEY (borrowerID) REFERENCES borrower(borrowerID),
    FOREIGN KEY (borrowingID) REFERENCES borrowing(borrowingID),
    PRIMARY KEY (borrowerID)
);

    CREATE TABLE borrowerContact (
    bEmail VARCHAR(255) UNIQUE NOT NULL,
    bName VARCHAR(255) NOT NULL,
    FOREIGN KEY (bEmail) REFERENCES borrower(bEmail),
    PRIMARY KEY (bEmail)
);

    CREATE TABLE genre (
    genreType VARCHAR(255) UNIQUE NOT NULL,
    genreDescription VARCHAR(255) NOT NULL,
    PRIMARY KEY (genreType)
);

   CREATE TABLE borrowings (
    borrowingID INT NOT NULL AUTO_INCREMENT,
    borrowDate DATE NOT NULL,
    returnDate DATE NOT NULL,
    status ENUM('On Hold', 'Returned', 'Late') NOT NULL,
    borrowerID INT NOT NULL,
    ISBN CHAR(13) NOT NULL,
fineID INT,
    FOREIGN KEY (borrowerID) REFERENCES borrower(borrowerID),
    FOREIGN KEY (ISBN) REFERENCES book(ISBN),
    FOREIGN KEY (fineID) REFERENCES fines(fineID),
    PRIMARY KEY (borrowingID)
);

 CREATE TABLE reviews (
    reviewID INT NOT NULL AUTO_INCREMENT,
    reviewDate DATE NOT NULL,
    borrowerID INT NOT NULL,
    reviewText TEXT,
    rating INT NOT NULL,
ISBN CHAR(13) NOT NULL,
    FOREIGN KEY (borrowerID) REFERENCES borrower(borrowerID),
    FOREIGN KEY (ISBN) REFERENCES book(ISBN),
    PRIMARY KEY (reviewID)
);

CREATE TABLE historyLog (
    logID INT NOT NULL AUTO_INCREMENT,
    generatedDate DATE NOT NULL,
    staffID INT NOT NULL,
text TEXT,
type ENUM('Borrowing', 'Return', 'Damage') NOT NULL,
    FOREIGN KEY (staffID) REFERENCES staff(staffID),
    PRIMARY KEY (logID)
);

CREATE TABLE fines (
    fineID INT NOT NULL AUTO_INCREMENT,
    borrowerID INT NOT NULL,
    dueDate DATE NOT NULL,
    datePaid DATE,
    FOREIGN KEY (borrowerID) REFERENCES borrower(borrowerID),
    PRIMARY KEY (fineID)
);

SET FOREIGN_KEY_CHECKS=1;

DESCRIBE book;
DESCRIBE bookAuthor;
DESCRIBE bookGenre;
DESCRIBE bookBorrowings;
DESCRIBE borrower;
DESCRIBE bBorrowings;
DESCRIBE borrowerContact;
DESCRIBE staff;
DESCRIBE staffContact;
DESCRIBE fines;
DESCRIBE borrowings;
DESCRIBE historyLog;
DESCRIBE reviews;
DESCRIBE genre;