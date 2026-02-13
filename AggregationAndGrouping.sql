USE EMPLOYEE;

create table product (
id int primary key auto_increment,
name varchar(40) not null,
price float not null,
category varchar(10) not null
);

insert into product (name,price,category) values 
("banana",20,"fruit"),
("mango",30,"fruit"),
("orange",40.55,"fruit"),
("apple",80.88,"fruit"),
("beans",30.33,"veg"),
("onion",20.05,"fruit"),
("mobile",30000,"gadget"),
("kwyboard",1000,"gadget");

update product set category="veg" where id=6;

select * from product;

select name, round(price) from product;

select count(price) from product;
select avg(id) as result from product;
select sum(price) as result from product;
select min(price) as result from product;
select max(price) as result from product;

select name,avg(price) from product;

select category,count(*) from product group by category;

select category,avg(price) from product group by category 
HAVING avg(price)>40;

select category,avg(price), count(*), sum(price) from product group by 
category;