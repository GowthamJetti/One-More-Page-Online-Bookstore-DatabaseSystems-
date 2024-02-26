
-- DML
/* 1 point each for the two insert statements */
insert into Authors (AuthorID, Name, BirthYear) values ('6', 'Haisley Richard', '1990');

insert into Categories (CategoryID, CategoryName) values ('4004','Horror');

/* 1 point each for the two update statements */
update Users 
set Password = 'goy@837'
where UserID = '103';


update Books
set Price='$18'
where BookID='10002';


/* 1 point for the delete statement*/
delete from Reviews where ReviewID = '703';


/* 1 point for the simple select statement */
select * 
from Orders
where OrderDate > '2024-01-13';


/* 2 points each for the 2 join statements */
select aut.Name as 'Author name', bok.Title as 'Book title', bok.Price as 'Book price',
bok.PublicationYear as 'Book publication year'
from Authors as aut join Books as bok on aut.AuthorID = bok.AuthorID;


select od.OrderDate as 'Order date', od.TotalAmount as 'Order amount',
ords.Quantity as 'Order quantity', ords.Price as 'Order price'
from Orders as od join OrderDetails as ords on od.OrderID = ords.OrderID;


/* 2 points each for the two that use summary statements */
select OrderID as 'Order id', BookID as 'Book id', sum(Quantity) as 'Order total quantity'
from OrderDetails
group by OrderID, BookID;

select Title as 'Book title', count(AuthorID) as 'Author count'
from Books
group by Title;


/* 2 points for the multi-table query */
select pub.Name as 'Publisher name', bok.Title as 'Book title', 
bok.PublicationYear as 'Book publication year',
ords.Quantity as 'Book quantity'
from Publishers as pub join Books as bok on pub.PublisherID = bok.PublisherID
join OrderDetails as ords on bok.BookID = ords.BookID;


/* 2 points for the query of your choice */
select usr.UserID as 'User id', usr.UserName as 'User name', 
rev.Rating as 'Book rating', rev.BookID as 'Book id'
from Users as usr join Reviews as rev on usr.UserID = rev.UserID;

