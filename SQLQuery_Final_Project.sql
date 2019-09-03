CREATE DATABASE dB_library;
USE [dB_library]
GO

CREATE TABLE Library_Branch (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName VARCHAR (50) NOT NULL,
	Address VARCHAR (50)NOT NULL
	);

CREATE TABLE Publisher (
	PublisherName VARCHAR (50) PRIMARY KEY NOT NULL,
	Address VARCHAR (50) NOT NULL,
	Phone VARCHAR (15) NOT NULL
	);

CREATE TABLE Books (
	BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR (50) NOT NULL,
	PublisherName VARCHAR(50) FOREIGN KEY REFERENCES Publisher(PublisherName)
	);

CREATE TABLE Book_Authors (
	BookID INT FOREIGN KEY REFERENCES Books(BookID),
	AuthorName VARCHAR (50) NOT NULL
	);

CREATE TABLE Book_Copies (
	BookID INT FOREIGN KEY REFERENCES Books(BookID),
	BranchID INT FOREIGN KEY REFERENCES Library_Branch(BranchID),
	Number_of_Copies INT NOT NULL
	);

CREATE TABLE Borrower (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Name VARCHAR (50) NOT NULL,
	Address VARCHAR (50) NOT NULL,
	Phone VARCHAR (50) NOT NULL
	);

CREATE TABLE Book_Loans (
	BookID INT FOREIGN KEY REFERENCES Books(BookID),
	BranchID INT FOREIGN KEY REFERENCES Library_Branch(BranchID),
	CardNo INT FOREIGN KEY REFERENCES Borrower(CardNo),
	DateOut VARCHAR (15) NOT NULL,
	DateDue VARCHAR (15) NOT NULL,
	);

INSERT INTO Library_Branch
	(BranchName, Address)
	VALUES
	('Central', '4048 NE 14th Ave, Portland, OR 97212'),
	('Sharpstown', '1531 SE Blimp Blvd, Portland OR 97314'),
	('Northeast', '0347 NE Siskiyou Ave, Portland, OR 92348'),
	('Southwest', '5932 SW 90th St, Portland, OR 93845')
	;

INSERT INTO Publisher
	(PublisherName, Address, Phone)
	VALUES
	('Penguin Books', 'penguin.com', '(805) 232-4597'),
	('Scribner', 'simonandschusterpublishing.com', '(310) 854-6669'),
	('Doubleday', 'doubleday.com', '(123) 456-7890'),
	('Viking Press', 'vikingpress.com', '(432) 927-5890')
	;

INSERT INTO Books
	(Title, PublisherName)
	VALUES
	('The Shining', 'Doubleday'),
	('IT', 'Viking Press'),
	('The Lost Tribe', 'Scribner'),
	('Shantaram', 'Penguin Books'),
	('Harry Potter and the Sorcerers Stone', 'Doubleday'),
	('Harry Potter and the Chamber of Secrets', 'Doubleday'),
	('Harry Potter and the Prisoner of Azkaban', 'Doubleday'),
	('Harry Potter and the Goblet of Fire', 'Doubleday'),
	('Harry Potter and the Order of the Pheonix', 'Doubleday'),
	('Harry Potter and the Half-blood Prince', 'Doubleday'),
	('Harry Potter and the Deathly Hallows', 'Doubleday'),
	('Lord of the Rings: The Fellowship of the Ring', 'Viking Press'),
	('Lord of the Rings: The Two Towers', 'Viking Press'),
	('Lord of the Rings: The Return of the King', 'Viking Press'),
	('One Fish Two Fish', 'Penguin Books'),
	('The Bible', 'Scribner'),
	('Sisterhood of the Travelling Pants', 'Doubleday'),
	('The Rainbow Fish', 'Doubleday'),
	('Star Wars: The Phantom Menace', 'Scribner'),
	('The Lion, the Witch, and the Wardrobe', 'Viking Press')

INSERT INTO Book_Authors
	(BookID, AuthorName)
	VALUES
	(1, 'Stephen King'),
	(2, 'Stephen King'),
	(3, 'Mark Lee'),
	(4, 'Gregory David Roberts'),
	(5, 'J K Rowling'),
	(6, 'J K Rowling'),
	(7, 'J K Rowling'),
	(8, 'J K Rowling'),
	(9, 'J K Rowling'),
	(10, 'J K Rowling'),
	(11, 'J K Rowling'),
	(12, 'J R R Tolkein'),
	(13, 'J R R Tolkein'),
	(14, 'J R R Tolkein'),
	(15, 'Dr Seuss'),
	(16, 'King James'),
	(17, 'Ann Brashares'),
	(18, 'Marcus Pfister'),
	(19, 'George Lucas'),
	(20, 'C S Lewis')
	;

INSERT INTO Borrower
	(Name, Address, Phone)
	VALUES
	('Cindy Lauper', 'Lauper Estates','(310) 948-1938'),
	('Queen Latifah', 'Latifah Enterprises', '(310) 045-9700'),
	('Prince', 'Castle St', '(696) 969-6969'),
	('Tom Hanks', 'Louisiana', '(348) 938-9924'),
	('Jennifer Garner', 'The Garner residence', '(877) 409-9477'),
	('George Clooney', 'Italy', '(847) 666-9377'),
	('Brad Pitt', 'George Clooney House', '(789) 928-7465'),
	('Angelina Jolie', 'Geaorge Clooney House', '(837) 827-9978')
	;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_of_Copies)
	VALUES
	(1, 1, 10),
	(2, 1, 10),
	(3, 1, 10),
	(4, 1, 10),
	(5, 1, 10),
	(6, 1, 10),
	(7, 1, 10),
	(8, 1, 10),
	(9, 1, 10),
	(10, 1, 10),
	(11, 1, 10),
	(12, 1, 10),
	(13, 1, 10),
	(14, 1, 10),
	(15, 1, 10),
	(16, 1, 10),
	(17, 1, 10),
	(18, 1, 10),
	(19, 1, 10),
	(20, 1, 10),
	(1, 2, 10),
	(2, 2, 10),
	(3, 2, 10),
	(4, 2, 10),
	(5, 2, 10),
	(6, 2, 10),
	(7, 2, 10),
	(8, 2, 10),
	(9, 2, 10),
	(10, 2, 10),
	(11, 2, 10),
	(12, 2, 10),
	(13, 2, 10),
	(14, 2, 10),
	(15, 2, 10),
	(16, 2, 10),
	(17, 2, 10),
	(18, 2, 10),
	(19, 2, 10),
	(20, 2, 10),
	(1, 3, 10),
	(2, 3, 10),
	(3, 3, 10),
	(4, 3, 10),
	(5, 3, 10),
	(6, 3, 10),
	(7, 3, 10),
	(8, 3, 10),
	(9, 3, 10),
	(10, 3, 10),
	(11, 3, 10),
	(12, 3, 10),
	(13, 3, 10),
	(14, 3, 10),
	(15, 3, 10),
	(16, 3, 10),
	(17, 3, 10),
	(18, 3, 10),
	(19, 3, 10),
	(20, 3, 10),
	(1, 4, 10),
	(2, 4, 10),
	(3, 4, 10),
	(4, 4, 10),
	(5, 4, 10),
	(6, 4, 10),
	(7, 4, 10),
	(8, 4, 10),
	(9, 4, 10),
	(10, 4, 10),
	(11, 4, 10),
	(12, 4, 10),
	(13, 4, 10),
	(14, 4, 10),
	(15, 4, 10),
	(16, 4, 10),
	(17, 4, 10),
	(18, 4, 10),
	(19, 4, 10),
	(20, 4, 10)
	;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(5, 1, 2, '9/3', '9/17'),
	(6, 1, 2, '9/3', '9/17'),
	(7, 1, 2, '9/3', '9/17'),
	(8, 1, 2, '9/3', '9/17'),
	(9, 1, 2, '9/3', '9/17'),
	(10, 1, 2, '9/3', '9/17'),
	(11, 1, 2, '9/3', '9/17'),
	(12, 2, 5, '9/3', '9/17'),
	(13, 2, 5, '9/3', '9/17'),
	(14, 2, 5, '9/3', '9/17'),
	(15, 2, 5, '9/3', '9/17'),
	(17, 2, 5, '9/3', '9/17'),
	(4, 1, 1, '9/3', '9/17'),
	(12, 1, 1, '9/3', '9/17'),
	(17, 1, 1, '9/3', '9/17'),
	(18, 1, 1, '9/3', '9/17'),
	(3, 1, 1, '9/3', '9/17'),
	(1, 1, 1, '9/3', '9/17'),
	(2, 1, 1, '9/3', '9/17'),
	(5, 1, 1, '9/3', '9/17'),
	(6, 1, 1, '9/3', '9/17'),
	(7, 1, 1, '9/3', '9/17'),
	(8, 1, 1, '9/3', '9/17'),
	(9, 1, 1, '9/3', '9/17'),
	(10, 1, 1, '9/3', '9/17'),
	(11, 1, 1, '9/3', '9/17'),
	(13, 1, 1, '9/3', '9/17'),
	(14, 1, 1, '9/3', '9/17'),
	(15, 1, 1, '9/3', '9/17'),
	(16, 1, 1, '9/3', '9/17'),
	(19, 1, 1, '9/3', '9/17'),
	(20, 1, 1, '9/3', '9/17'),
	(4, 3, 4, '9/3', '9/17'),
	(12, 3, 4, '9/3', '9/17'),
	(17, 3, 4, '9/3', '9/17'),
	(18, 3, 4, '9/3', '9/17'),
	(3, 3, 4, '9/3', '9/17'),
	(1, 3, 4, '9/3', '9/17'),
	(2, 3, 4, '9/3', '9/17'),
	(5, 3, 4, '9/3', '9/17'),
	(6, 3, 4, '9/3', '9/17'),
	(7, 3, 4, '9/3', '9/17'),
	(8, 3, 4, '9/3', '9/17'),
	(9, 3, 4, '9/3', '9/17'),
	(10, 3, 4, '9/3', '9/17'),
	(11, 3, 4, '9/3', '9/17'),
	(13, 3, 4, '9/3', '9/17'),
	(14, 3, 4, '9/3', '9/17'),
	(15, 3, 4, '9/3', '9/17'),
	(16, 3, 4, '9/3', '9/17'),
	(19, 3, 4, '9/3', '9/17'),
	(20, 3, 4, '9/3', '9/17')
	;

CREATE PROCEDURE lostTribe
AS
BEGIN
	SELECT a1.Number_of_Copies, a3.Title, a2.BranchName
	FROM Book_Copies a1
	INNER JOIN Library_Branch a2 ON a2.BranchID = a1.BranchID
	INNER JOIN Books a3 ON a3.BookID = a1.BookID
	WHERE a2.BranchName = 'Sharpstown' AND a3.Title = 'The Lost Tribe'
END

CREATE PROCEDURE tribeBranch
AS
BEGIN
	SELECT a1.Number_of_Copies, a3.Title, a2.BranchName
	FROM Book_Copies a1
	INNER JOIN Library_Branch a2 ON a2.BranchID = a1.BranchID
	INNER JOIN Books a3 ON a3.BookID = a1.BookID
	WHERE a3.Title = 'The Lost Tribe'
END

CREATE PROCEDURE noBooks
AS
BEGIN
	SELECT Name
	FROM Borrower
	WHERE CardNo NOT IN (
		SELECT CardNo
		FROM Book_Loans)
END

CREATE PROCEDURE dueTodaySharpstown
AS
BEGIN
	SELECT a1.Title, a3.Name, a3.Address
	FROM Books a1
	INNER JOIN Book_Loans a2 ON a2.BookID = a1.BookID
	INNER JOIN Borrower a3 ON a3.CardNo = a2.CardNo
	WHERE a2.DateDue = '9/3'
END

CREATE PROCEDURE branchLoans
AS
BEGIN
	SELECT a1.BranchName, COUNT(a2.DateOut)
	FROM Library_Branch a1
	INNER JOIN Book_Loans a2 ON a1.BranchID = a2.BranchID
	GROUP BY a1.BranchName
END

CREATE PROCEDURE bigBorrow
AS
BEGIN
	SELECT a1.Name, a1.Address, COUNT(a2.CardNo) AS NumberOfBooks
	FROM Borrower a1
	INNER JOIN Book_Loans a2 ON a2.Cardno = a1.CardNo
	GROUP BY a1.Name, a1.Address
END

CREATE PROCEDURE StephenKing
AS
BEGIN
	SELECT a1.Title, a2.Number_of_Copies
	FROM Books a1
	INNER JOIN Book_Copies a2 ON a2.BookID = a1.BookID
	INNER JOIN Book_Authors a3 ON a3.BookID = a1.BookID
	INNER JOIN Library_Branch a4 ON a4.BranchID = a2.BranchID
	WHERE a3.AuthorName = 'Stephen King' AND a4.BranchName = 'Central'
END