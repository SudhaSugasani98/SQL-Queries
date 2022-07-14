create table School
(schoolid bigint primary key identity(1,1),
schoolname varchar(80) not null,
schoollocation varchar(80) not null)



create table student
(studentid bigint primary key identity(2,1),
studentname varchar(80) not null,
schoolid bigint foreign key references school(schoolid))



create proc datainsertion (@schoolname varchar(80),@schoollocation varchar(80),
@studentname varchar(80))
--@schoolid bigint)
as
begin
insert into school(Schoolname,schoollocation)
values(@schoolname,@schoollocation)
declare @schoolid bigint
select @schoolid = scope_identity()
insert into student(studentname,schoolid)
values(@studentname,@schoolid)
end

exec datainsertion @schoolname='ABC',@schoollocation='HYD',@studentname='Sudha'

select * from School
select * from student