--create table InsuranceCarriers
--(
--InsCarrierId bigint primary key identity(1,1),
--InsCarrierName varchar(20) not null,
--NHMemberId varchar(20) not null,
--IsActive bit default 1,
--)
--insert into InsuranceCarriers values('Aethna','NH2022856319',0)
                                                                                                                                                                        

--insert into InsuranceCarriers(InsCarrierName,NHMemberId)
--values('Avmed','NH2022854519'),
--('Central Health Plan','NH2022858919'),
--('Zing','NH2022858211'),
--('Care First','NH2022858222')








--create table InsuranceHealthPlan
--(InsHealthplanId bigint primary key identity(101,1),
--InsHealthplanName varchar(50),
--InsCarrierId bigint foreign key references InsuranceCarriers(InsCarrierId),
--Createdate datetime)

--insert into InsuranceHealthPlan values
--('Achoice',1,getdate()),
--('AVMED H1016_021',2,getdate()),
--('Central Health Medicare',3,getdate()),
--('ZingChoice ILHMO',4,getdate()),
--('CareChoice',5,getdate())

--select InsHealthplanName from InsuranceHealthPlan where InsHealthplanId 


--Select InsHealthPlanName,InsHealthplanId,InsCarrierName from InsuranceHealthPlan
--inner join InsuranceCarriers 
--on InsuranceCarriers.InsCarrierId=InsuranceHealthPlan.InsCarrierId where InsCarrierName='Zing'

///Creating Stored Proc///
--create procedure GetInsuranceDetails 
--as
--begin
--select * from InsuranceCarriers 
--end
///Execcuting ///
--exec GetInsuranceDetails


////////////// Viewig SP WITH QUERY //////////////

sp_Helptext GetInsuranceDetails


