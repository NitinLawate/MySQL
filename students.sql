SELECT * FROM university.students;

select * from students where s_id='3';


 create table Atable (aid int primary key);

insert into atable values (1);

create table Btable (bid int primary key);
 insert into btable values (11);
 
 create table ctable (aid int,bid int,foreign key(aid) references atable(aid),foreign key(bid) references btable(bid));
insert into ctable values(1,11);

select a.aid "A",b.bid "B" from atable a,btable b, ctable c where b.bid=c.bid and c.aid = a.aid;

select * from atable;

truncate ctable;
truncate atable;
truncate btable;

alter table atable add name varchar(20);
alter table btable add name varchar(20);

insert into atable values (1,'one');
insert into btable values (11,'eleven');

insert into ctable values (1,11);
insert into ctable values (1,12);
