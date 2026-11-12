use company;
create table students
(
Roll_NO int, 
Name varchar(40)
); 

create table marks
(
Roll_NO int, 
Marks int
); 

insert into students
values (101,"Hitesh"),
(102,"Priyanka"),
(103,"Jitesh");

insert into marks
values
(102,98),
(103,99),
(104,100)
;

select * from students;
select * from marks;

select * from students s 
join 
marks m 
on s.Roll_NO=m.Roll_NO;


select * from 
students s  left join  marks m 
on s.Roll_NO=m.Roll_NO;

select * from 
students s  right join  marks m 
on s.Roll_NO=m.Roll_NO;

select * from 
students s  left join  marks m 
on s.Roll_NO=m.Roll_NO
union
select * from 
students s  right join  marks m 
on s.Roll_NO=m.Roll_NO;

use company;
Alter table students 
rename Column Roll_NO to Rno;


-- Aggregate Functions (Sum, Max, Min, Count, Count (Distinct))

select count(*) 
from orders;

select max(total_order_amount) 
from orders;

select min(total_order_amount) 
from orders;

select sum(total_order_amount) as SumTotal
from orders;

select distinct ShipperID 
from orders
order by ShipperID;

-- default for order by is ascending 

select ShipperID, sum(Total_order_amount) as "Total", count(ShipperID)
from orders
group by ShipperID
order by Total desc;

select * from orders;

-- non aggregated columns will come in left and aggregated columns will come in right 

select ShipperID, PaymentID, sum(Total_order_amount) as "Total", count(ShipperID)
from orders
group by ShipperID, PaymentID
order by ShipperID asc, Total desc ;


select PaymentID, ShipperID, sum(Total_order_amount) as "Total", count(ShipperID)
from orders
group by PaymentID, ShipperID
order by PaymentID asc, Total desc ;

-- to find which Payment Method is widely used for a particular country. 

select * from orders;

select * from customers;

select Country,PaymentID,count(OrderID) as NoofOrders
from orders o join customers c 
on o.CustomerID=c.CustomerID
group by Country,PaymentID
order by Country asc, Nooforders desc;

-- we need the top 5 customers as per no. of orders (Name)

select FirstName, LastName, count(orderid) as Nooforders
from orders o join customers c
on o.CustomerID=c.CustomerID
group by FirstName, LastName
order by Nooforders desc
limit 5;