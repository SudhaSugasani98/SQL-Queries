 
--ADM +currentyear+'MaxValue'+1

--ADM +currentyear+studenId


--Creating Database
create database School

--Creating Mastertable
create table Class(ClassId int primary key identity(1,1),
ClassName varchar(20) not null,IsActive bit default(1),
CreatedBy varchar(20),
CreatedDate datetime default(getdate()),
ModifiedBy varchar(20),
ModifiedDate datetime default(getdate()))

insert into Class(ClassName,CreatedBy,ModifiedBy) values('1st Standard','System Admin','System Admin1')
insert into Class(ClassName,CreatedBy,ModifiedBy) values('2nd Standard','System Admin1','System Admin2')
insert into Class(ClassName,CreatedBy,ModifiedBy) values('3rd Standard','System Admin2','System Admin3')
insert into Class(ClassName,CreatedBy,ModifiedBy) values('4th Standard','System Admin3','System Admin4')



--Creating StudentInformationtable
create table StudentInformation(StudentId int primary key identity(1,1),
StudentName varchar(50)not null,
DateOfBirth date not null,
Age int,
BloodGroup varchar(10) not null,
PlaceOfBirth varchar(20) ,
Nationality varchar(20) not null,
Religion varchar(20) not null,
Caste varchar(10),
AadharCardNumber bigint not null unique,
PresentSchoolDetails nvarchar(max) not null,
Languages nvarchar(max) not null,
StudentOtherInformation nvarchar(max) not null,
LanguageAbilities nvarchar(max) not null,
AdditionalInformation nvarchar(max) not null,
AdmissionNumber as 'ADM' + RIGHT( convert(varchar(4),(Year(Getdate()))) + CONVERT(VARCHAR(5),StudentId ), 6),
ClassJoined varchar(20) not null,
IsActive bit default(1),
CreatedBy varchar(50) ,
CreatedDate datetime default(getdate()),
ModifiedBy varchar(50),
ModifiedDate datetime default(getdate()))


alter table StudentAddress add State varchar(20)

--Creating StudentAddess Table
create table StudentAddress(AddressId int primary key identity(1,1),
ResidentialAddress varchar(50) not null,
Country varchar(20) not null,
City varchar(20) not null,
Pincode int not null,
CorrespondenceAddress nvarchar(max),
StudentId int foreign key references StudentInformation(StudentId),
IsActive bit default(1),
CreatedBy varchar(50) ,
CreatedDate datetime default(getdate()),
ModifiedBy varchar(50),
ModifiedDate datetime default(getdate())
)

--Creating FamilyInformation Table
create table FamilyInformation(FamilyInformationId int primary key not null identity(1,1),
NumberOfBoys int not null,
NumberOfGirls int not null,
Title varchar not null,
Name varchar not null,
DateOfBirth date not null,
Age int, 
Mobile1 bigint not null,
Mobile2 bigint,
Email varchar(30) not null,
AnnualIncome int not null,
Education varchar(30) not null,
Occupation varchar(20),
NameOfOrganisation varchar(50),
Designation varchar(20),
BusinessOrServiceAddress nvarchar(50),
AadharCardNumber bigint unique not null,
LocalGuardiansDetails nvarchar(max),
StudentId int foreign key references StudentInformation(StudentId),
IsActive bit default(1),
CreatedBy varchar(50) ,
CreatedDate datetime default(getdate()),
ModifiedBy varchar(50),
ModifiedDate datetime default(getdate())
)

--Creating ImagesTable
Create table Images(
ImageId int primary key identity(1,1), 
StudentPhoto varbinary not null,
FatherPhoto varbinary not null,
StudentId int foreign key references StudentInformation(StudentId),
IsActive bit default(1),
CreatedBy varchar(50) ,
CreatedDate datetime default(getdate()),
ModifiedBy varchar(50),
ModifiedDate datetime default(getdate())
)

select * from Class
select * from StudentInformation
select * from FamilyInformation
select * from StudentAddress


select * from Images







