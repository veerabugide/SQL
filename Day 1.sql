-- creation of database;


-- create database;

create database student_info;


-- using database;


use student_info;


-- creting table ;

create table sale(salesId int not null,
salesName varchar(20),
address varchar(20));


insert into sale values(1,'sahoo','Banglore');


insert into sale values(2,'Biscut','Banglore'),(3,'sahoo','Delhi');

show tables;


select * from sale;               -- select statement;


select salesId from sale;         -- select statment with specifi column;


select 
select salesId from sale where salesName='sahoo';  -- where condition
;

select * from sale order by salesId;


select o.id,o.productName,s.salesId from sale s, order_sales o

where s.salesId=o.sales_Id;  -- alias



select count(*) from sale;  -- aggregation functions


select count(sales_Id) from sale;



select * from sale group by salesName;  -- group by



select * from sale group by sales_Id;
