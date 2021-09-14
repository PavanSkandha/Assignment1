create table states
(
stateid int primary key,
statename varchar(40),
statecode varchar(40),
region varchar(40),
language varchar(40)
)

create table students
(
sid int primary key,
name varchar(40),
stateid int foreign key references states(stateid),
class varchar(40),
section varchar(40)
)
insert into states(stateid,statename,statecode,region,language) values(1,'karnataka','KA','south','kannada');
insert into states(stateid,statename,statecode,region,language) values(2,'andhra pradesh','AP','south','telugu');
insert into states(stateid,statename,statecode,region,language) values(3,'tamil nadu','TN','south','tamil');
insert into states(stateid,statename,statecode,region,language) values(4,'kerala','KL','south','malayalam');
insert into states(stateid,statename,statecode,region,language) values(5,'maharashtra','MH','north','marathi');
select * from states
insert into students(sid,name,stateid,class,section) values(1,'nikhil',1,'9th','A');

insert into students(sid,name,stateid,class,section) values(2,'divith',3,'10th','A');

insert into students(sid,name,stateid,class,section) values(3,'diana',4,'9th','B');

insert into students(sid,name,stateid,class,section) values(4,'vijay',2,'9th','A');

insert into students(sid,name,stateid,class,section) values(5,'hari',5,'10th','A');
select * from students
select * from states

---stored procedure

create proc NewDetails11
(@sid int,@name varchar(40),@stateid int,@class varchar(40),@section varchar(40),@statename varchar(40),@statecode varchar(40),
@region varchar(40),@language varchar(40))
as
begin
insert into students values(@sid,@name,@stateid,@class,@section)
insert into states values(@stateid,@statename,@statecode,@region,@language)
end
exec NewDetails11 6,'sanj',8,'10th','B','delhi','te','north','hindi'
select * from students
select * from states