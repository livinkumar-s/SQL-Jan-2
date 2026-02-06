USE employee;

create table cricketer (
id int primary key auto_increment,
name varchar(50) not null,
noOfCenturies int check (noOfCenturies>=10),
isActive boolean default 1
);

create table jersey (
id int primary key auto_increment,
jersey int not null,
playerId int,
foreign key (playerId) references cricketer(id)
);


insert into cricketer (name,noOfCenturies) values 
("virat kohli",86),("Joe root",61),
("Rohit Sharma",26);


insert into cricketer (name,noOfCenturies,isActive) values 
("sachein tendulkar",100,0);

insert into cricketer (name,noOfCenturies) values 
("leo",8);

insert into jersey (jersey,playerId) values 
(81,7);

select * from cricketer;
select * from jersey;