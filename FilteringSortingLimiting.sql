USE employee;

insert into actorlist values 
(7,"Dhanush",46),(8,"RDJ",50),(9,"Vikram",58),(10,"Simbu",48);

select * from actorlist where age>60;
select * from actorlist where age BETWEEN 50 AND 70;
select * from actorlist where age>50 and id>4;
select * from actorlist where age>50 or id>4;
select * from actorlist where not age>50;

select * from actorlist where age in 
(12,22,30,33,55,66,50,34,47,57,70);

select * from actorlist where age not in 
(12,22,30,33,55,66,50,34,47,57,70);

select * from actorlist where
age=12 or age=22 or age=30 or age=33 or age=55 or age=66 
or age=50 or age=34 or age=47 or age=57 or age=70;

select * from actorlist;
select * from actorlist where name LIKE 's%';
select * from actorlist where name LIKE '%a';
select * from actorlist where name LIKE '%r%';
select * from actorlist where name like '%n__';
select * from actorlist where name like '_a%a%' and age<70;

select * from actorlist order by name asc;

select * from actorlist limit 3 offset 6;

SELECT *
FROM actorlist
ORDER BY age DESC
LIMIT 1 OFFSET 1;
 