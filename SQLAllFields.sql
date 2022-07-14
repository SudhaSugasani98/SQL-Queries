create table tblCheckBox(LngId int primary key identity(1,1),
LngKnown varchar(20))

insert into tblCheckBox values('Telugu'),('English'),('Hindi'),('Malayalam'),('Kannada')


create table tblRadioBtn(ClassId int primary key identity(1,1),
ClassName varchar(20))

insert into tblRadioBtn values('1st'),('2nd'),('3rd'),('4th'),('5th'),
('6th'),('7th'),('8th'),('9th'),('10th')

create table tblDropdown(SectionID int primary key identity(1,1),
SectionName varchar(20))

insert into tblDropdown values('A'),('B'),('C'),('D')

create table StudentData(StudentId int primary key identity(1,1),
Name varchar(20)not null,
DOB datetime,
Age int,
LanguagesKnown nvarchar(max),
ClassName varchar(20),
Section varchar(20))

select * from tblCheckBox
select * from tblDropdown
select * from tblRadioBtn
select * from StudentData