--create procedure GetMemberData
--as
--begin
--select * from MemberData
--end
--exec GetMemberData

--insert into Memberdata(FirstName,LastName,DOB,Gender,Address,Phonenumber,Email,InsuranceId)
--values
--('Bhanu','Prakash',Getdate(),'Male','Home',2345678543,'b@gmail.com',2)

--create procedure InsertMemberData(@FirstName varchar(30),
--@LastName varchar(30),@DOB datetime,
--@Gender varchar(20),@Address varchar(max),@PhoneNumber bigint,
--@Email varchar(20),@InsuranceId bigint) 
--as 
--begin 
--insert into MemberData (FirstName,LastName,DOB,Gender,Address,Phonenumber,Email,InsuranceId)
--values
--(@FirstName,@LastName,@DOB,@Gender,@Address,@PhoneNumber,@Email,@InsuranceId)
--select * from MemberData
--end

create procedure GetDataById(@MemberId int)
as
begin
select * from MemberData where MemberId=@MemberId
end

create or alter procedure UpdateMemberData(@MemberId int,@FirstName varchar(30),
@LastName varchar(30),@DOB datetime,
@Gender varchar(20),@Address varchar(max),@PhoneNumber bigint,
@Email varchar(20),@InsuranceId bigint) 
as 
begin 
update MemberData 
set
FirstName=@FirstName,LastName=@LastName,DOB=@DOB,Gender=@Gender,Address=@Address,
Phonenumber=@PhoneNumber,Email=@Email,InsuranceId=@InsuranceId
where MemberId=@MemberId
select * from MemberData where MemberId=@MemberId
end

--create or alter procedure UpdateMemberDet(@MemberId int,@FirstName varchar(30),
--@LastName varchar(30),
--@Gender varchar(20),@Address varchar(max),@PhoneNumber bigint,
--@Email varchar(20),@InsuranceId bigint) 
--as 
--begin 
--update MemberData 
--set
--FirstName=@FirstName,LastName=@LastName,Gender=@Gender,Address=@Address,
--Phonenumber=@PhoneNumber,Email=@Email,InsuranceId=@InsuranceId
--where MemberId=@MemberId
----select * from MemberData
--end

exec UpdateMemberData 1,'Test','Test last','1999-09-27',
'Male','Test Address',
9876123456,'d@gmail.com',1

select * from MemberData

create or alter procedure DeleteRecord(@MemberId int)
as
begin
delete from MemberData where MemberId=@MemberId
select * from MemberData
end

exec [dbo].[GetDataById] 1

select GetDate()

