use employee;

create table userData (
id int primary key auto_increment,
name varchar(50) not null,
age int,
mobile bigint,
email varchar(100),
password varchar(200) not null,
isActive boolean
);

insert into userdata (name,age,mobile,email,password,isActive)
values
("Ben",18,8976564535,"ben@gmail.com","1234534364",1);

select * from userdata;

create view contactInfo as select id as userId, email, mobile
from userdata;

select * from contactinfo;

create view userView as select name,age from userdata;
create view adminView as select * from userdata;
create view others as select name from userdata;

ALTER TABLE cricketer ADD noOfHalfCenturies int;
ALTER TABLE cricketer ADD spouse varchar(30) after name;
ALTER TABLE cricketer MODIFY spouse varchar(50);
ALTER TABLE cricketer RENAME COLUMN spouse TO spouseNAme;
ALTER TABLE cricketer DROP COLUMN spouseNAme;
ALTER TABLE cricketer DROP COLUMN noOfHalfCenturies;

ALTER TABLE product RENAME TO productlist;
