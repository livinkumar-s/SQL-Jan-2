USE employee;

create table students (
id int primary key auto_increment,
name varchar(20) not null,
mark int not null,
dept enum("ECE","CSE","EEE")
);

insert into students (name, mark, dept)
values
("ram",77,"ECE"),
("hari",47,"ECE"),
("sheela",97,"ECE"),
("priya",99,"CSE"),
("livin",100,"CSE"),
("hendry",89,"CSE"),
("stark",69,"EEE"),
("krish",98,"EEE"),
("groot",59,"EEE");

select * from students;

select avg(mark) from students;

select * from students
 where mark>(select avg(mark) from students);
 
select mark from students where dept="ECE";

select * from students 
where mark> ALL (select mark from students where dept="ECE");

select * from students 
where mark> ANY (select mark from students where dept="EEE");

select * from students s1 where 
mark>(select avg(mark) from students where dept=s1.dept);
