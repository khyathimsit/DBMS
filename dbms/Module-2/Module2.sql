Ass-1:
select title from movie where director = 'Steven Spielberg';
Ass-2:
select year from movie where title = 'Star Wars';
Ass-3:
select title from movie where mid in (select mid from rating);
Ass-4:
select ratingdate from rating where rid in (select rid from reviewer where name = 'Brittany Harris');
Ass-5:
select title from movie where NOT mid in(select mid from rating where rid in(select rid from reviewer where name = 'Elizabeth Thomas'));
Ass-6:
select title from movie where mid in (select mid from rating where stars = 4 OR stars = 5);
Ass-7:
select name from reviewer where NOT rid in (select rid from rating);
Ass-8:
select * from movie where mid in (select mid from rating where rid in(select rid from reviewer where name = 'Chris Jackson'));
Ass-9:
select name from reviewer where rid in(select rid from rating where mid in (select mid from movie where title = 'Gone with the Wind'));
Ass-10:
select director from movie where mid in (select mid from rating where rid in(select rid from reviewer where name = 'Brittany Harris'));
