--
-- Database: `library_management_system`
--
CREATE DATABASE IF NOT EXISTS `library_management_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `library_management_system`;

-- --------------------------------------------------------

--
-- Table structure for table `Author`
--
CREATE TABLE `Author` (
  `AuthorID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  `Nationality` VARCHAR(100),
  PRIMARY KEY (`AuthorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Book`
--
CREATE TABLE `Book` (
  `BookID` INT NOT NULL AUTO_INCREMENT,
  `Title` VARCHAR(255) NOT NULL,
  `ISBN` VARCHAR(20) UNIQUE NOT NULL,
  `PublicationYear` YEAR,
  PRIMARY KEY (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BookAuthor` (Junction Table)
--
CREATE TABLE `BookAuthor` (
  `BookID` INT NOT NULL,
  `AuthorID` INT NOT NULL,
  PRIMARY KEY (`BookID`, `AuthorID`),
  FOREIGN KEY (`BookID`) REFERENCES `Book`(`BookID`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`AuthorID`) REFERENCES `Author`(`AuthorID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--
CREATE TABLE `Member` (
  `MemberID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  `Email` VARCHAR(255) UNIQUE NOT NULL,
  `MembershipDate` DATE NOT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Loan`
--
CREATE TABLE `Loan` (
  `LoanID` INT NOT NULL AUTO_INCREMENT,
  `BookID` INT NOT NULL,
  `MemberID` INT NOT NULL,
  `BorrowDate` DATE NOT NULL,
  `DueDate` DATE NOT NULL,
  `ReturnDate` DATE,
  `FineAmount` DECIMAL(5, 2) DEFAULT 0.00,
  PRIMARY KEY (`LoanID`),
  FOREIGN KEY (`BookID`) REFERENCES `Book`(`BookID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (`MemberID`) REFERENCES `Member`(`MemberID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Optional: Add indexes for foreign keys for performance
--
CREATE INDEX `idx_book_id_loan` ON `Loan` (`BookID`);
CREATE INDEX `idx_member_id_loan` ON `Loan` (`MemberID`);
CREATE INDEX `idx_book_id_bookauthor` ON `BookAuthor` (`BookID`);
CREATE INDEX `idx_author_id_bookauthor` ON `BookAuthor` (`AuthorID`);

--
-- Optional: Add a check constraint for FineAmount (if supported by MySQL version)
--
-- ALTER TABLE `Loan` ADD CONSTRAINT `chk_fine_amount_non_negative` CHECK (`FineAmount` >= 0);

--
-- Optional: Add a check constraint for ReturnDate not before BorrowDate
--
-- ALTER TABLE `Loan` ADD CONSTRAINT `chk_return_date_valid` CHECK (`ReturnDate` IS NULL OR `ReturnDate` >= `BorrowDate`);
