--create database Test
--create table tblPerson(id int not null primary key,name nvarchar(50) not null,email nvarchar(50) not null,genderid int)
select * from tblPerson
select * from  tblGender
delete from tblGender
delete from tblPerson
--create table tblGender(id int not null primary key ,gender nvarchar(10) not null)
alter table tblPerson add constraint gender_FK
foreign key(genderid) references tblGender(id)
insert into tblGender values(1,'Male')
insert into tblGender values(2,'Female')
insert into tblGender values(3,'Transgender')
insert into tblPerson values(1,'Sudha','s@s.com',1)
insert into tblPerson values(2,'Lehana','l@l.com',2)
insert into tblPerson(id,name,email) values(3,'Honey','h@h.com')