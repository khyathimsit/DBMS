Assignment-2:

create function updatehs() returns trigger as $grade$
  begin
    if (new.grade < 9 OR new.grade > 12) then
	    update highschooler
		set grade = NULL where id = new.id;
		return new;
	end if;
	if new.grade is NULL then
	    update highschooler
		set grade = 9 where id = new.id;
		return new;
	end if;
  end;
 $grade$ LANGUAGE plpgsql;
create trigger grade
after insert on highschooler
for each row
execute procedure updatehs();
--------------------------------------------
Assignment-3:

create function check_symmetry() returns trigger as $symmetry$
  begin
    IF (TG_OP = 'INSERT') THEN
            INSERT INTO friend VALUES (new.id2, new.id1);
			return new;
	  ELSIF (TG_OP = 'DELETE') THEN
            DELETE FROM friend WHERE id1=old.id2 AND id2=old.id1; 
            RETURN old;
    END IF;
  end;
 $symmetry$ LANGUAGE plpgsql;
create trigger symmetry
after INSERT OR DELETE on friend
for each row
execute procedure check_symmetry();
--------------------------------------------
Assignment - 4:

create function graduate_check() returns trigger as $graduate$
  begin
    if(new.grade > 12) then
	    DELETE FROM highschooler WHERE id=new.id;
	    return old;
	end if;
  end;
 $graduate$ LANGUAGE plpgsql;
create trigger graduate
after update on highschooler
for each row
execute procedure graduate_check();