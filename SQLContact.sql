create table Contact(
ContactId int primary key identity(1,1),
Name varchar(20) not null,
CompanyName varchar(20) not null,
PhoneNumber bigint unique not null,
DescribesyouBest nvarchar(max),
Comments nvarchar(max))
alter table Contact add EmailAddress varchar(25)

select * from Contact