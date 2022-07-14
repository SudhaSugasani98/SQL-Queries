
-- Categroty
create table dbo.Category
(
CategoryId bigint not null primary key identity(1,1),
CategoryName varchar(50)
)

select * from Category
select * from Products
select * from ProductsCategoryMapping

Select pm.Productsid, ProductsName from ProductsCategoryMapping pm
INNER JOIN Products ON pm.ProductsId = Products.ProductsId
Where pm.CategoryId = 4


insert dbo.Category (CategoryName)
Values('Furniture'),('HomeDecor'),('Kitchen'),('Lawn and Garden')



-- Products
create table dbo.Products
(
ProductsId bigint not null primary key identity(1,1),
ProductsName varchar(50)
)



--Furniture
insert dbo.Products (ProductsName)
Values('beds'),('cabinets'),('clocks'),('tables')
--HomeDecor
insert dbo.Products (ProductsName)
Values('The Beautiful House Co'),('Den Decor'),('Daisy Chain Decor'),('Sanctuary Decor')
-- Kitchen
insert dbo.Products (ProductsName)
Values('Farmcore Kitchens'),('spoon set'),('Modern Base'),('Modern Meals')
--Lawn and Garden

insert dbo.Products (ProductsName)
Values('Landscapers Unlimited'),('Grass Gone Wild'),('Sunshine Landscapers'),('See Weeds Landscaping')

select * from ProductsCategoryMapping
create table dbo.ProductsCategoryMapping
(
Id bigint not null primary key identity(1,1),
CategoryId bigInt,
ProductsId bigInt
)
--select * from dbo.Products
insert into dbo.ProductsCategoryMapping (CategoryId,ProductsId)
Values(1,1),(1,2),(1,3),(1,4)
,(2,5),(2,6),(2,7),(2,8)
,(3,9),(3,10),(3,11),(3,12)
,(4,13),(5,14),(6,15),(7,16)



select * from dbo.ProductsCategoryMapping
--select * from dbo.testOrders
select * from dbo.Category
select * from dbo.Products
--delete from dbo.testOrders where OrderId=1


create table dbo.testOrders
(
OrderId bigint primary key identity(1,1),
FirstName varchar(50),
LastName Varchar(50),
Email varchar(50),
CategoryName Varchar(50),
Qty bigint,
ProductsName varchar(50)
)


select * from dbo.testOrders