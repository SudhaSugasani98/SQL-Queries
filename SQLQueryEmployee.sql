create table EmployeDetails
(EmpId int primary key identity(1,1),EmpName nvarchar(25) not null,EmpSalary int )
select * from [dbo].[EmployeDetails]
insert into EmployeDetails values('Sudha',20000)

select * from [dbo].[EmployeDetails]


EmpId	EmpName	EmpSalary
1	Sudha	20000