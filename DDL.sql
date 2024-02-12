-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-02-11 16:21:32.731

-- tables
-- Table: Authors
CREATE TABLE Authors (
    AuthorID int  NOT NULL,
    Name varchar(20)  NOT NULL,
    BirthYear int  NOT NULL,
    CONSTRAINT Authors_pk PRIMARY KEY (AuthorID)
);

-- Table: Books
CREATE TABLE Books (
    BookID int  NOT NULL,
    Title varchar(35)  NOT NULL,
    Price varchar(10)  NOT NULL,
    PublicationYear int  NOT NULL,
    AuthorID int  NOT NULL,
    CategoryID int  NOT NULL,
    PublisherID int  NOT NULL,
    CONSTRAINT Books_pk PRIMARY KEY (BookID)
);

-- Table: Categories
CREATE TABLE Categories (
    CategoryID int  NOT NULL,
    CategoryName varchar(30)  NOT NULL,
    CONSTRAINT Categories_pk PRIMARY KEY (CategoryID)
);

-- Table: OrderDetails
CREATE TABLE OrderDetails (
    OrderDetailID int  NOT NULL,
    Quantity int  NOT NULL,
    Price varchar(10)  NOT NULL,
    OrderID int  NOT NULL,
    BookID int  NOT NULL,
    CONSTRAINT OrderDetails_pk PRIMARY KEY (OrderDetailID)
);

-- Table: Orders
CREATE TABLE Orders (
    OrderID int  NOT NULL,
    OrderDate date  NOT NULL,
    TotalAmount varchar(10)  NOT NULL,
    UserID int  NOT NULL,
    CONSTRAINT Orders_pk PRIMARY KEY (OrderID)
);

-- Table: Publishers
CREATE TABLE Publishers (
    PublisherID int  NOT NULL,
    Name varchar(35)  NOT NULL,
    PhoneNumber int  NOT NULL,
    Address varchar(40)  NOT NULL,
    CONSTRAINT Publishers_pk PRIMARY KEY (PublisherID)
);

-- Table: Reviews
CREATE TABLE Reviews (
    ReviewID int  NOT NULL,
    Rating int  NOT NULL,
    BookID int  NOT NULL,
    UserID int  NOT NULL,
    CONSTRAINT Reviews_pk PRIMARY KEY (ReviewID)
);

-- Table: Users
CREATE TABLE Users (
    UserID int  NOT NULL,
    UserName varchar(20)  NOT NULL,
    Email varchar(40)  NOT NULL,
    Password varchar(20)  NOT NULL,
    Phone int  NOT NULL,
    Address varchar(30)  NOT NULL,
    CONSTRAINT Users_pk PRIMARY KEY (UserID)
);

-- foreign keys
-- Reference: Books_Authors (table: Books)
ALTER TABLE Books ADD CONSTRAINT Books_Authors FOREIGN KEY Books_Authors (AuthorID)
    REFERENCES Authors (AuthorID);

-- Reference: Books_Categories (table: Books)
ALTER TABLE Books ADD CONSTRAINT Books_Categories FOREIGN KEY Books_Categories (CategoryID)
    REFERENCES Categories (CategoryID);

-- Reference: Books_Publishers (table: Books)
ALTER TABLE Books ADD CONSTRAINT Books_Publishers FOREIGN KEY Books_Publishers (PublisherID)
    REFERENCES Publishers (PublisherID);

-- Reference: OrderDetails_Books (table: OrderDetails)
ALTER TABLE OrderDetails ADD CONSTRAINT OrderDetails_Books FOREIGN KEY OrderDetails_Books (BookID)
    REFERENCES Books (BookID);

-- Reference: OrderDetails_Orders (table: OrderDetails)
ALTER TABLE OrderDetails ADD CONSTRAINT OrderDetails_Orders FOREIGN KEY OrderDetails_Orders (OrderID)
    REFERENCES Orders (OrderID);

-- Reference: Orders_Users (table: Orders)
ALTER TABLE Orders ADD CONSTRAINT Orders_Users FOREIGN KEY Orders_Users (UserID)
    REFERENCES Users (UserID);

-- Reference: Reviews_Books (table: Reviews)
ALTER TABLE Reviews ADD CONSTRAINT Reviews_Books FOREIGN KEY Reviews_Books (BookID)
    REFERENCES Books (BookID);

-- Reference: Reviews_Users (table: Reviews)
ALTER TABLE Reviews ADD CONSTRAINT Reviews_Users FOREIGN KEY Reviews_Users (UserID)
    REFERENCES Users (UserID);

-- End of file.

