Ass-1:
select distinct name from person join eats using(name) where (pizza = 'mushroom' OR pizza = 'pepperoni') and person.gender = 'female';
Ass-2:
select pizzeria from frequents where name in (select name from person where age < 18);
Ass-3:
select pizzeria, avg(price) as a from serves group by pizzeria order by a; 
Ass-4:
select pizzeria from serves where price = (select min(price) from serves where pizza = 'pepperoni');
Ass-5:
select t.pizzeria from (select pizzeria, avg(price) as avg from serves group by pizzeria order by avg) as t where t.avg < (select avg(price) from serves);
ass-6:
select count(pizzeria) from serves where pizzeria = 'Straw Hat';
Ass-7:
select count(distinct name) from frequents where pizzeria in ('Pizza Hut', 'Chicago Pizza');
ass-8:
insert into Person values('tes', 24, 'male');
Ass-9:
select name from person where age in(select max(age) from person where name in (select name from eats where pizza = 'mushroom'));
Ass-10:
update Serves set price = (price + (0.1 * price)) where pizzeria = 'Pizza Hut';
