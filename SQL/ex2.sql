CREATE TABLE Book (
    ISBN CHAR(13),
    bookTitle VARCHAR(255),
    author_fName VARCHAR(255),
    author_lName VARCHAR(255),
    genre VARCHAR(255),
    PRIMARY KEY (ISBN) );
    
    CREATE TABLE Borrower (
    borrowerID INT,
    fName VARCHAR(50),
    lName VARCHAR(50),
    borrowingLimit INT,
    membershipDate DATE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY (borrowerID)
);

CREATE TABLE Staff (
    staffID INT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(255) UNIQUE NOT NULL,
	password VARCHAR(255) NOT NULL,
    staffJobType VARCHAR(50),
    PRIMARY KEY (staffID)
);
CREATE TABLE Fines (
    fineID INT,
    amount DECIMAL(10, 2) NOT NULL,
    borrowerID INT NOT NULL,
    dueDate DATE,
    datePaid DATE,
    FOREIGN KEY (borrowerID) REFERENCES Borrower(borrowerID),
    PRIMARY KEY (fineID)
);
   CREATE TABLE Borrowings (
    borrowingID INT,
    borrowDate DATE,
    returnDate DATE,
    status ENUM('On Hold', 'Returned', 'Late') NOT NULL,
    borrowerID INT,
    ISBN CHAR(13),
    FOREIGN KEY (borrowerID) REFERENCES Borrower(borrowerID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
    PRIMARY KEY (borrowingID)
);
CREATE TABLE HistoryLog (
    logID INT,
    generatedDate DATE NOT NULL,
    staffID INT,
    FOREIGN KEY (staffID) REFERENCES Staff(staffID),
    PRIMARY KEY (logID)
);
 
 CREATE TABLE Reviews (
    reviewID INT,
    reviewDate DATE,
    borrowerID INT,
    reviewText TEXT,
    rating INT,
    FOREIGN KEY (borrowerID) REFERENCES Borrower(borrowerID),
    PRIMARY KEY (reviewID)
);