Ass-1:
select title from movie where NOT mid in (select distinct mid from rating);
Ass-2:
select (select avg(avgbefore) 
	from (select avg(stars) as avgbefore from rating 
			  where mid in (select mid from movie where year < 1980)group by mid) as before) 
-
	(select avg(avgafter) 
	    from (select avg(stars) as avgafter from rating 
			    where mid in (select mid from movie where year > 1980)group by mid) as after);	
Ass-3:
select year from movie where mid in (select distinct mid from rating where stars = 4 OR stars = 5) order by year desc;
Ass-4:
select name from reviewer where rid in (select rid from rating where ratingdate is null);
Ass-5:
select title,average.a 
         from (select mid,avg(stars) as a from rating group by mid) as average, movie m 
                where m.mid = average.mid order by average.a desc,m.title;
Ass-6:
select name 
      from (select rid,count(stars) as cnt from rating group by rid) as table1, reviewer r 
           where r.rid = table1.rid and table1.cnt >=3;
Ass-7:
select title 
     from (select mid as midv from (select min(stars) as cnt from rating)as table1, rating r 
     	  where r.stars = table1.cnt) as table2, movie m 
                where table2.midv = m.mid order by m.title;

Ass-8:
select avg(stars) 
      from (select mid from movie where title ='Gone with the Wind') as table1, rating r 
          where table1.mid = r.mid;
Ass-9:
select title,average.a 
         from (select mid,count(stars) as a from rating group by mid) as average, movie m 
                where m.mid = average.mid order by average.a desc,m.title;
Ass-10:
select title from movie where year >=1964 AND year <= 1984;

//select title from movie where mid in (select mid from rating  where stars = (select min(stars) m from rating) order by title);