
-- 
INSERT INTO Users (UserID, UserName, Email, Password, Phone, Address) 
VALUES ('101', 'Carlos Rose', 'carloscrose@gmail.com', 'F64#jvj', '973618995', '3175 Deer Ridge Drive Caldwell');
INSERT INTO Users (UserID, UserName, Email, Password, Phone, Address) 
VALUES ('102', 'Alicia Teague', 'aliciateague@gmail.com', 'Kih^9gj', '267119462', '29 Chester Street Yelgun');
INSERT INTO Users (UserID, UserName, Email, Password, Phone, Address) 
VALUES ('103', 'Lachlan Goyder', 'lachlangoyder@gmail.com', 'B97kg@', '756963555', '47 Shirley Street Highland');
INSERT INTO Users (UserID, UserName, Email, Password, Phone, Address) 
VALUES ('104', 'Finn Felan', 'finnfelan@gmail.com', 'NF79r@9', '261764408', '79 Grayson Street Munderoo');
INSERT INTO Users (UserID, UserName, Email, Password, Phone, Address) 
VALUES ('105', 'Ben Brumby', 'benbrumby@gmail.com', 'MO0#9#', '393383073', '8 Cornish Street Keilor East');

-- 
INSERT INTO Authors (AuthorID, Name, BirthYear) VALUES ('1', 'Paulo Coelho', '1947');
INSERT INTO Authors (AuthorID, Name, BirthYear) VALUES ('2', 'Charles Duhigg', '1974');
INSERT INTO Authors (AuthorID, Name, BirthYear) VALUES ('3', 'Colleen Hoover', '1979');
INSERT INTO Authors (AuthorID, Name, BirthYear) VALUES ('4', 'James Clear', '1986');
INSERT INTO Authors (AuthorID, Name, BirthYear) VALUES ('5', 'Robert Kiyosaki', '1947');


-- 
INSERT INTO Publishers (PublisherID, Name, PhoneNumber, Address) 
VALUES ('1001', 'Random House', '301123567', '13 Kerma Crescent Ben Bullen');
INSERT INTO Publishers (PublisherID, Name, PhoneNumber, Address) 
VALUES ('1002', 'Atria Books', '954235678', '5 Raglan Street Wrattens Forest');
INSERT INTO Publishers (PublisherID, Name, PhoneNumber, Address) 
VALUES ('1003', 'Plata Publishing', '617346789', '38 Elizabeth Street Wallu');
INSERT INTO Publishers (PublisherID, Name, PhoneNumber, Address) 
VALUES ('1004', 'Original Brazalian Publications', '415567890', '96 South Molle Boulevard Feluga');
INSERT INTO Publishers (PublisherID, Name, PhoneNumber, Address) 
VALUES ('1005', 'Wholesale Liquidation Lots', '214567901', '33 Mcgregor Street MENINDEE');

--
INSERT INTO Categories (CategoryID, CategoryName) VALUES ('4001','Fiction');
INSERT INTO Categories (CategoryID, CategoryName) VALUES ('4002','Science Fiction');
INSERT INTO Categories (CategoryID, CategoryName) VALUES ('4003','Romance');

--
INSERT INTO Books (BookID, Title, Price, PublicationYear, AuthorID, CategoryID, PublisherID) 
VALUES ('10001', 'It ends with us', '$20', '2016', '2', '4001', '1001');
INSERT INTO Books (BookID, Title, Price, PublicationYear, AuthorID, CategoryID, PublisherID) 
VALUES ('10002', 'Atomatic Habits', '$15', '2018', '1', '4002', '1002');
INSERT INTO Books (BookID, Title, Price, PublicationYear, AuthorID, CategoryID, PublisherID) 
VALUES ('10003', 'The Power of habit', '$18', '2012', '3', '4003', '1001');
INSERT INTO Books (BookID, Title, Price, PublicationYear, AuthorID, CategoryID, PublisherID) 
VALUES ('10004', 'Rich Dad Poor Dad', '$11', '1997', '4', '4003', '1004');
INSERT INTO Books (BookID, Title, Price, PublicationYear, AuthorID, CategoryID, PublisherID) 
VALUES ('10005', 'Th Alchemist', '$20', '1988', '5', '4002', '1005');

--
INSERT INTO Orders (OrderID, OrderDate, TotalAmount, UserID) VALUES ('501', '2024-01-10', '$39', '101');
INSERT INTO Orders (OrderID, OrderDate, TotalAmount, UserID) VALUES ('502', '2024-01-12', '$50', '102');
INSERT INTO Orders (OrderID, OrderDate, TotalAmount, UserID) VALUES ('503', '2024-01-13', '$39', '103');
INSERT INTO Orders (OrderID, OrderDate, TotalAmount, UserID) VALUES ('504', '2024-01-15', '$23', '104');
INSERT INTO Orders (OrderID, OrderDate, TotalAmount, UserID) VALUES ('505', '2024-01-15', '$16', '105');


--
INSERT INTO OrderDetails (OrderDetailID, Quantity, Price, OrderID, BookID) VALUES ('601', '20', '$20', '501', '10001');
INSERT INTO OrderDetails (OrderDetailID, Quantity, Price, OrderID, BookID) VALUES ('602', '15', '$15', '502', '10002');
INSERT INTO OrderDetails (OrderDetailID, Quantity, Price, OrderID, BookID) VALUES ('603', '10', '$18', '503', '10003');
INSERT INTO OrderDetails (OrderDetailID, Quantity, Price, OrderID, BookID) VALUES ('604', '5', '$11', '504', '10004');
INSERT INTO OrderDetails (OrderDetailID, Quantity, Price, OrderID, BookID) VALUES ('605', '3', '$20', '505', '10005');


--
INSERT INTO Reviews (ReviewID, Rating, BookID, UserID) VALUES ('701', '5', '10001', '101');
INSERT INTO Reviews (ReviewID, Rating, BookID, UserID) VALUES ('702', '4', '10002', '102');
INSERT INTO Reviews (ReviewID, Rating, BookID, UserID) VALUES ('703', '5', '10003', '103');
INSERT INTO Reviews (ReviewID, Rating, BookID, UserID) VALUES ('704', '3', '10004', '104');
INSERT INTO Reviews (ReviewID, Rating, BookID, UserID) VALUES ('705', '2', '10005', '105');