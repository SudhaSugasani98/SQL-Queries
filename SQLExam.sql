-- create database Exam

--Create table Insurances(InsuranceID int primary key identity(1,1),
--InsuranceName varchar(50) not null,
--CreatedBy varchar(20),
--CreatedDate datetime default(getdate()),
--ModifiedBy varchar(20),
--ModifiedDate datetime default(getdate()))

insert into Insurances(InsuranceName,CreatedBy,ModifiedBy) values('Aethna','System User','System Admin'),('Central Health','System User','System Admin'),
('Blue Cross','System User','System Admin'),('HAP Medicare','System User','System Admin')

--drop table MemberDetails
--drop table InsuranceDetails
Create table MemberDetails(FirstName varchar(50) not null,
LastName varchar(50) not null,
DOB datetime not null,
Gender varchar(20) not null,
Address varchar(max) not null,
PhoneNumber bigint primary key ,
Email varchar(50) not null,
MemberId bigint unique not null identity(1,1),
CreatedBy varchar(20),
CreatedDate datetime default(getdate()),
ModifiedBy varchar(20),
ModifiedDate datetime default(getdate()))


create table InsuranceDetails(InsuranceId bigint primary key  identity(1,1),
InsuranceName varchar(50) not null,
IsContracted bit default(1),
IsDiscountProgram bit default(1),
City varchar(20) not null,
PhoneNumber bigint foreign key references MemberDetails(PhoneNumber), 
State varchar(20),
ZipCode int not null,
CreatedBy varchar(20),
CreatedDate datetime default(getdate()),
ModifiedBy varchar(20),
ModifiedDate datetime default(getdate()))

 select * from InsuranceDetails
 select * from MemberDetails
 select * from Insurances