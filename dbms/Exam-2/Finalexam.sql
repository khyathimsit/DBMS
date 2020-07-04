Simple Query:
select distinct instID from took where classId = 'class1';
----------------------------------
Constraints...
Q1:
Alter table took add check(score >0 AND score<100);

Q2:
Alter table student add check(major IS NOT NULL AND (major ='CS' OR major = 'EE'));
-----------------------
Triggers:

create function check_region() returns trigger as $$
  begin
    if new.studID
  end;
 $$ LANGUAGE plpgsql;

create trigger class
before insert on took
for each row
execute procedure check_region();




-------------
print studid, name of the student whose score is greater tha the avg score of the major for each class.