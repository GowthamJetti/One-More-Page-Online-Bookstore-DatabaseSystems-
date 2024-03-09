

/*  */
Drop trigger Order_details_total_amount;

delimiter //
Create trigger `Order_details_total_amount`
	after insert on `OrderDetails` for each row 
	begin
		declare amt decimal(10,2);
		select sum(Price*Quantity) into amt
		from OrderDetails
		where OrderID=new.OrderID;
		
		update Orders
		set TotalAmount= amt
		where OrderID=new.OrderID;
		
       end;//
delimiter ;


insert into OrderDetails (OrderDetailID, Quantity, Price, OrderID, BookID) 
values ('606', '2', '25', '501', '10005');



/* Locking */
-- write 
Lock table Reviews write;

Delete from Reviews where ReviewID = 703;

Select * from Reviews;

--
Lock table Reviews read;

Insert into Reviews (ReviewID, Rating, BookID, UserID) 
values ('703', '5', '10003', '103');

Select * from Reviews;


/* Backup */
cd C:\Program Files\MySQL\MySQL Server 8.0\bin

prompt @$f

mysqldump -u root -p onemorepage > D:/onemorepage/backup.sql
	
