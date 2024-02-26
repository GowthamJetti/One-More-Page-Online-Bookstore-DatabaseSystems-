
/* Indexes */
create index users_email on Users(Email);

create index books_title on Books(Title);

create index order_total_amount on Orders(TotalAmount);


/* Views */
create view order_summary as 
select od.OrderID, od.OrderDate, od.TotalAmount, usr.UserName
from Orders as od inner join Users as usr
on od.UserID = usr.UserID
inner join OrderDetails as ords on ords. OrderID = od.OrderID;

select * from order_summary;


create view book_categories as 
select cat.CategoryName, bok.*
from Books as bok inner join Categories as cat on 
bok.CategoryID = cat.CategoryID;

select * from book_categories;


/* Transactions */
delete from Categories where CategoryID='4004';

commit;

select * from Categories;

--
insert into Publishers (PublisherID, Name, PhoneNumber, Address) 
values ('1006', 'Wholesale Liquidation Lots', '214567901', '33 Mcgregor Street MENINDEE');

rollback;

select * from Publishers;


/* Security */
create user 'admin'@'localhost' identified by 'root';
create user 'reviewer'@'localhost' identified by 'root';
create user 'manager'@'localhost' identified by 'root';


grant select, insert, update, delete on onemorepage.Authors to 'admin'@'localhost';
grant select, update on onemorepage.Reviews to 'reviewer'@'localhost';
grant select, insert, update, delete on onemorepage.Orders to 'manager'@'localhost';
grant select, insert, update, delete on onemorepage.OrderDetails to 'manager'@'localhost';
