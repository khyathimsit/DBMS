select r1.name from highschooler r1 where r1.id  in (select f.id2 from friend f where f.id1 in 
	(select r.id from highschooler r where name = 'Gabriel'));

select name from highschooler join (select id2 as i from highschooler join friend on id = id1 and name = 'Gabriel') as j on id = j.i;
-----------------------------------------------------------------------------------------------------

select distinct name, grade from highschooler where id in (select id2 from likes group by id2 having count(id2) > 1) order by name;

select distinct name, grade from highschooler join (select id2 as i from likes group by id2 having count(id2) > 1) as j on j.i = id order by name;

-----------------------------------------------------------------------------------------------------

select name,grade from highschooler where id not in (select id1 from likes) and id not in(select id2 from likes) order by grade desc,name;

 select distinct(name),grade from highschooler join likes on id not in (select id1 as i from likes union select id2 as j from likes) order by grade desc,name;
---------------------------------------------------------------------------------------------------------
select name,grade from highschooler,(select id1 from friend except select distinct(fc1.id1) from (select id1,count(id2) as friendcount from friend group by id1) as fc1,
(select id1,count(id2) as friendcount from friend group by id1) as fc2 where fc1.friendcount < fc2.friendcount) as maxfriend
where maxfriend.id1 = highschooler.id;
-----------------------------------------
select count(id2) from friend where id1 in (select id from highschooler where name = 'Alexis');

select count(id2) from friend join (select id as i from highschooler where name = 'Alexis') as j on j.i = id1;
---------------------
select (count(id) - count(distinct (name))) as diff from highschooler;

insert into highschooler values(2000,'jane',9);

delete from highschooler where id = (select id from highschooler where id not in (select id1 from friend) and id not in (select id2 from friend));

delete from highschooler where id in (select id from highschooler  join likes on id not in (select id1 as i from friend union select id2 as j from friend));
----------------
delete from highschooler where grade = 12;

update highschooler set grade = grade + 1 where grade < 12;