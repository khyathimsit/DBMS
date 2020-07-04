Ass-1:
Alter table movie add primary key(mid);
Ass-2:
Alter table movie add unique(title,year);
Ass-3:
Alter table reviewer add primary key(rid);
Ass-4:
Alter table rating add unique(rid,mid,ratingdate);
Ass-5:
ALTER  TABLE reviewer
ALTER COLUMN name SET NOT NULL;
Ass-6:
ALTER  TABLE rating
ALTER COLUMN stars SET NOT NULL;
Ass-7:
ALTER  TABLE movie add check(year > 1900);
Ass-8:
ALTER  TABLE rating add check(stars >=1 AND stars <=5);
Ass-9:
ALTER  TABLE rating add check(ratingdate > '2000-01-01');
Ass-10:
