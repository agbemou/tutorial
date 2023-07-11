create table student
(
  sid integer primary key,
  first varchar(30) not null,
  last varchar(30),
  dob  date check (dob <= '31-AUG-2022'),
  email varchar(30) unique,
  city varchar(30) default 'schaumburg'
);

insert into student ( sid, first, email  )   values (2, 'tom' , 'tom@abc.com');

insert into student ( sid, first, email , dob  )   values (3, 'tom' , 'tom1@abc.com' , '01-JAN-2020');

insert into student ( sid, first, email , dob , last )
            values (4, 'kevin', 'kevin@abc.com', '02-FEB-1980', 'smith');
           
insert into student ( sid, first, email , dob , last )
            values (5, 'amy', 'amy@abc.com', '03-MAR-1990', 'smith');
           
insert into student ( sid, first, email , dob , last )
            values (6, 'mark', 'mark@abc.com', '03-JUN-1998', 'william');
           
insert into student ( sid, first, email , dob , last )
            values (7 ,'mary', 'mary@abc.com', '03-SEP-1999', 'william');

select * from student;

select * from student order by  dob , first desc;

select * from student where dob like '%90%';

select count (distinct last ) from student;

select last, count(*)
from student
group by last
order by last
;

select * from student WHERE LAST IS NULL;












select * from student where extract(year from dob) = 1980;

select * from student where extract(month from dob) = 9;


select count (distinct last ) from student;