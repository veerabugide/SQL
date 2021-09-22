alter table sale add column city varchar(20); -- alter table  ;



update sale set city='Banglore'
 where sales_id =1;    -- update table;



drop table sale;  -- delete table ;

 

drop database assignment;  -- delete database;



truncate table sale;    -- truncate table;



delete from sale
 where sales_Id=1;     -- deleting the row;

 

select o.id,o.productName,s.salesId
 
from sale s, order_sales o

where s.salesId=o.sales_Id;       -- alias



create table order_sales
(
id int primary key,

productName varchar(15),

address varchar(15),

salesId int,

constraint FK_order foreign key(salesId) references Sale(salesId));   --  using primary key, foreign key and not null;



select o.id,o.productName,s.salesId 
from sale s 

inner join order_sales o
 
on s.salesId=o.salesId;    -- Inner join;



select o.id,o.productName,s.salesId 
from sale s
 
left join order_sales o 

on s.salesId=o.salesId;  -- left join;

select o.id,o.productName,s.salesId 
from sale s
 
left join order_sales o 

on s.salesId=o.salesId;    -- right join;
