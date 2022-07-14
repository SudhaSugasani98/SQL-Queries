create table StdInformation(StdId int primary Key identity(1,1)
,StdPhoto varbinary(max)not null,
StdName varchar(20)not null,StdDateOfBirth date not null,StdAge int,
StdBloodGroupId int foreign key references StdBloodGroup(StdBloodGroupId) not null,
StdPlaceofBith varchar(20),
StdNationality varchar(15)not null,StdReligion varchar(15)not null,
StdAadhar int not null,Status bit,
CreatedBy varchar(10),CreatedDate datetime,
UpdatedBy varchar(10),UpdatedDate datetime)

alter table StdInformation add  StudentCasteId int 
foreign key references StudentCast(StudentCasteId)not null




--create  table StdBloodGroup(StdBloodGroupId int primary key identity(1,1),
--StdBloodGroupName varchar(20)not null,Status bit,CreatedBy varchar(10),CreatedDate datetime,
--UpdatedBy varchar(10),UpdatedDate datetime )

create  table StudentCast(StudentCasteId int primary key identity(1,1),
StudentCasteName varchar(20)not null,Status bit,CreatedBy varchar(10),CreatedDate datetime,
UpdatedBy varchar(10),UpdatedDate datetime )

