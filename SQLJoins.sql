--select * from LaptopDetails
--create table LapDet(LapItemId int not null primary Key identity(1,1),
--LapDescription varchar(50) not null,Storage varchar(10), LapId int not null foreign key(LapId) references dbo.LaptopDetails(LapId))
--Select * from LapDet
--insert into LapDet (LapDescription,Storage,LapId)values('Best Laptop in this Range','HDD',4)LapItemId
--LapDescription

--2
select * from LapDet
--5
select * from LaptopDetails

--2
select * from dbo.LapDet ld inner join 
dbo.LaptopDetails lds on 
ld.LapId=lds.LapId

--2
select * from dbo.LapDet ld left join 
dbo.LaptopDetails lds on 
ld.LapId=lds.LapId

--5
select * from dbo.LapDet ld right join 
dbo.LaptopDetails lds on 
ld.LapId=lds.LapId

--2
select * from dbo.LapDet ld full outer join 
dbo.LaptopDetails lds on 
ld.LapId=lds.LapId

--2
select * from dbo.LaptopDetails lds inner join 
 dbo.LapDet ld on 
ld.LapId=lds.LapId

--5
select * from dbo.LaptopDetails lds left join 
 dbo.LapDet ld on 
ld.LapId=lds.LapId

--2
select * from dbo.LaptopDetails lds right join 
 dbo.LapDet ld on 
ld.LapId=lds.LapId

--5
select * from dbo.LaptopDetails lds full outer join 
 dbo.LapDet ld on 
ld.LapId=lds.LapId

--10
select * from dbo.LaptopDetails cross join

--2
select * from dbo.LaptopDetails cross join dbo.LapDet where LapDet.LapId=LaptopDetails.LapId


--6
select LapDescription from LapDet
union 
select LapName from LaptopDetails 

--7(1Duplicate LapName)
select LapDescription from LapDet
union all
select LapName from LaptopDetails 








