use employee;

select "Hello" as result;
select name as actorName from actorlist;

select round(5.49) as result;
select floor(5.99) as result;
select ceil(5.00001) as result;

select abs(-19) as result;
select mod(55,45) as result;

select concat("Hello","World","...!") as result;
select length(concat("Hello","World","...!")) as result;
select upper(concat("Hello","World","...!")) as result;
select lower(concat("Hello","World","...!")) as result;
select substring("Hello world",7,5) as result;
select trim("    hello world      ") as result;
select replace("Hello Hello Hello world","Hello","Hi") as result;

select curdate() as result;
select curtime() as result;
select now() as result;
select datediff("2026-02-14",curdate()) as result;

select * from actorlist;

select concat("His name is ",upper(name),".") as 
actorName from actorlist;


select concat("his name is " , upper(name) , " he is" , age ,  " years old " )as actorName from actorlist;