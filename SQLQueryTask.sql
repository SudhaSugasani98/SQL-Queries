create database Task

create table PhoneType(PhoneTypeId bigint not null primary key identity(1,1),
PhoneTypeCode varchar(50),
IsActive bit default(1),
CreatedBy varchar(50) ,
CreatedDate datetime default(getdate()),
ModifiedBy varchar(50),
ModifiedDate datetime default(getdate()))

insert into PhoneType(PhoneTypeCode,CreatedBy,ModifiedBy) values('Home','SystemUser','SystemUser1')

insert into PhoneType(PhoneTypeCode,CreatedBy,ModifiedBy) values('Work','SystemUser2','SystemUser12')
insert into PhoneType(PhoneTypeCode,CreatedBy,ModifiedBy) values('ALT','SystemUser3','SystemUser13')
insert into PhoneType(PhoneTypeCode,CreatedBy,ModifiedBy) values('Mobile','SystemUser4','SystemUser14')
delete from  PhoneType where PhoneTypeId=3
select * from PhoneType


create Table MemberInfo(
MemberId bigInt primary Key identity(1,1) Not Null,
MemberCode Varchar(50) Not Null unique,
FirstName varchar(50),
LastName Varchar(50),
NickName varchar(50),
EmailAddress varchar(50) not null ,
AlternateEmailAddress varchar(50),
DOB Datetime not null,
Age int not null,
Occupation varchar(50),    
MemberData varchar(Max),
IsActive bit default(1),
CreatedBy Varchar(50),
CreatedDate Datetime default(getdate()),
ModifiedDate DateTime default(getdate()),
ModifiedBy Varchar(50)
)
select * from MemberInfo

Insert into MemberInfo (MemberCode,FirstName,LastName,EmailAddress,DOB,Age
,MemberData,CreatedBy,ModifiedBy)
Values ('NBTR20221','Test','LastName','s@gmail.com','2000-4-15','22','{"maritalStatus" :"Single","PartnerName" :"","primaryLanguage":""}
','SystemUser','SystemUser')

select * from MemberPhoneNumbers
--drop table MemberPhoneNumbers
create table MemberPhoneNumbers
(
MemberPhoneNumberId BigInt Not Null Primary Key identity(1,1),
IsPreffereableNumber bit not null,
PhoneTypeCode varchar(50),
PhoneNumber varchar(50),
AlternateNumber varchar(50),
IsActive bit default(1),
CreateBy Varchar(50),
CreateDate Datetime default(getdate()),
ModifiedDate DateTime default(getdate()),
ModifiedBy Varchar(50),

)
select * from MemberPhoneNumbers

Insert into MemberPhoneNumbers (IsPreffereableNumber,PhoneTypeCode,PhoneNumber,CreateBy,ModifiedBy)
Values(1,'HME','9874563210','SystemUser','SystemUser')
Insert into MemberPhoneNumbers (IsPreffereableNumber,PhoneTypeCode,PhoneNumber,CreateBy,ModifiedBy)
Values(0,'WRK','9874563210','SystemUser','SystemUser')


create table MemberAddress
(
MemberAddressId BigInt Not Null Primary Key identity(1,1),
IsPreffereableAddress bit not null,
AddressType varchar(50),
Address1 varchar(50),
Address2 varchar(50),
City varchar(50),
State varchar(50),
ZipCode int,
IsActive bit default(1),
CreatedBy Varchar(50),
CreateDate Datetime default(getdate()),
ModifiedDate DateTime default(getdate()),
ModifiedBy Varchar(50),
)




Insert Into MemberAddress (IsPreffereableAddress,AddressType,Address1,City,State,ZipCode,CreatedBy,ModifiedBy)
Values(1,'Home','Test','TestCity','TestState',5203666,'SystemUser','SystemUser')
Insert Into MemberAddress (IsPreffereableAddress,AddressType,Address1,City,State,ZipCode,CreatedBy,ModifiedBy)
Values(1,'Work','Test1','TestCity1','TestState1',5289654,'SystemUser','SystemUser')

select * from MemberInfoObject
delete from MemberInfoObject where MemberInfoObjectId=8

Select * from MemberInfoObject

Create Table MemberInfoObject
(
MemberInfoObjectId BigInt Not Null Primary Key identity(1,1),
MemberObject Varbinary(max) null,
IsActive bit default(1),
CreatedBy Varchar(50),
CreateDate Datetime default(getdate()),
ModifiedDate DateTime default(getdate()),
ModifiedBy Varchar(50),
MemberId bigint 

)

update MemberAddress
set IsPreffereableAddress =0
where MemberAddressId=2 

sp_help 'MemberInfo'

select * from MemberAddress
select * from MemberInfo
select * from PhoneType
select * from MemberPhoneNumbers
select * from MemberInfoObject

alter table MemberInfoObject add MemberId bigint 
update MemberInfoObject set MemberId=1 
