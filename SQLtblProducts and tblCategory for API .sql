create table tblProducts(ProductId int primary key identity(1,1),
ProductName varchar(20) not null,
ProductPrice int,
ProductQuantity int,
ProductQuality varchar(20),
CreatedBy varchar(30),
CreatedDate datetime default(getdate()),
ModifiedBy varchar(30),
ModifiedDate datetime default(getdate()),
IsActive bit default(1))

--Category
Create table tblCategory(CategoryId int primary key identity(1,1),
CategoryName varchar(30) not null,
Categoryprice int,
ProductId int not null foreign key references tblProducts(ProductId),
CreatedBy varchar(30),
CreatedDate datetime default(getdate()),
ModifiedBy varchar(30),
ModifiedDate datetime default(getdate()),
IsActive bit default(1))

select * from tblCategory
select * from tblProducts

