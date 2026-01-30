USE employee;

INSERT INTO actorlist VALUES (1,"Rajini kanth",74),
(2,"Vijay",52),(3,"Kamal Hasan",70),
(4,"Balayya",64),(5,"Ranveer singh",41);

SELECT * from actorlist WHERE age=64;

DELETE FROM actorlist where id=4;

UPDATE actorlist SET age=65 WHERE id=4;
UPDATE actorlist SET name="Ranveer Singh",age=40 where id=5;

SET SQL_SAFE_UPDATES=1;