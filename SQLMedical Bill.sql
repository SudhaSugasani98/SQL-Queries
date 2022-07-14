create table MedicalBill(MedicalBillId int primary key identity(1,1),
Name varchar(25) not null,
OfcwhichEmployed varchar(20) not null,
BasicPay bigint not null,
NameOfPatientandRelation varchar(100) not null,
PeriodOfIllness int not null,
ParticularsOfTratment varchar(200) not null,
Medicines varchar(200) not null,
Charges bigint not null,
DetailsOfCashMemos varchar(200) not null,
LabouratoryTests varchar(200) not null,
TotalClaim bigint not null,
LessAdvancedrawn varchar(100) not null,
NetAmountPayable bigint not null,
Date datetime not null,
CreatedBy varchar(20) not null,
CreatedDate datetime default(getdate()),
ModifiedBy varchar(20) not null,
ModifiedDate datetime default(getdate()),
IsActive bit default(1))
select * from MedicalBill
--drop table MedicalBill


