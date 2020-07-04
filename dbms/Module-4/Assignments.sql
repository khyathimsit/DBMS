Assignment-1:
select name from highschooler 
    where id in (select f.id2 from friend f 
    	  where f.id1 in (select id from highschooler where name = 'Gabriel'));



-- select name from highschooler  
--          join (select id2 as i from highschooler join friend on id =id1 and name = 'Gabriel') as j
--          on id =j.id


Assignment-2:
select name, grade from highschooler 
    where id in (select id2 from likes group by id2 having count(id2)>1);

select name, grade from highschooler 
    join (select id2 as i from likes group by id2 having count(id2)>1) as j on id = j.i order by grade;

Assignment-3:
select name, grade from highschooler h 
      where id not in (select id1 from likes) and id not in (select id2 from likes) 
          order by grade desc, h.name;

Assignment-5:

Assignment-6:
select count(id) - count(distinct name) from highschooler;

Assignment-7:
insert into Highschooler values (2000, 'jane', 9);

Assignment - 8:
delete from highschooler 
	where id = (select id from highschooler h where id not in 
		(select id1 from friend) and id not in (select id2 from friend));

Assignment-9:
delete from highschooler where grade = 12;

Assignment-10:
update highschooler set grade = grade + 1 where grade < 12;


