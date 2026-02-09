use employee;

select * from cricketer;
select * from jersey;
select * from spouse;

select * from cricketer inner join spouse on 
cricketer.id= spouse.playerId;

select * from cricketer left join spouse on 
cricketer.id= spouse.playerId;
select * from cricketer right join spouse on 
cricketer.id= spouse.playerId;

SELECT c.name, j.jersey FROM cricketer c
INNER JOIN jersey j
ON c.id= j.playerId;

create table spouse (
id int primary key auto_increment,
name varchar(40) not null,
playerId int
);

insert into spouse (name,playerId) values 
("Anushka Sharma",1),("Rithika",3),("Saakshi",5);



select * from cricketer left join spouse on 
cricketer.id= spouse.playerId 
union 
select * from cricketer right join spouse on 
cricketer.id= spouse.playerId;

select c.name as playerName,j.jersey as jerseyNumber,
s.name as spouseName from cricketer c left join spouse s on 
c.id=s.playerId left join jersey j on c.id=j.playerId;

select * from cricketer cross join jersey;