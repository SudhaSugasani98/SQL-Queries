create table OrderInformation(OrderInfoID int primary key identity(1,1),
FirstName varchar(20) not null,
LastName varchar(20) not null,
PhoneNumber bigint ,
EmailAddress varchar(20) not null,
DeliveryAddress nvarchar(max) not null,
SpecialInstructions nvarchar(max),
CreatedBy varchar(25),
CreatedDate datetime default(getdate()),
ModifiedBy varchar(25),
ModifiedDate datetime default(getdate()),
IsActive bit default(1))


Create table Orders(OrderId int primary key identity(1,1),
OrderDetails1 nvarchar(max),
OrderDetails2 nvarchar(max),
OrderDetails3 nvarchar(max),
OrderDetails4 nvarchar(max),
OrderDetails5 nvarchar(max),
OrderDetails6 nvarchar(max),
OrderDetails7 nvarchar(max),
OrderDetails8 nvarchar(max),
OrderDetails9 nvarchar(max),
More bit default(1),
OrderInfoID int foreign key references OrderInformation(OrderInfoID),
CreatedBy varchar(25),
CreatedDate datetime default(getdate()),
ModifiedBy varchar(25),
ModifiedDate datetime default(getdate()),
IsActive bit default(1))

select * from OrderInformation
select * from Orders

