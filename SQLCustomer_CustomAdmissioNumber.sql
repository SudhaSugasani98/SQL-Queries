CREATE TABLE Customer12 (
        CUSId INT NOT NULL IDENTITY(1, 1) PRIMARY KEY
        ,CUSKey AS 'Cus' + RIGHT( convert(varchar(4),(Year(Getdate()))) + CONVERT(VARCHAR(5), CUSId), 6) 
        ,CusName VARCHAR(50)
        ,mobileno INT
        ,Gender VARCHAR(10)
        )


		select * from Customer12

		isActive bit
		CreatedDate
		CreatedBy
		Mo

		Insert into Customer12(CusName,mobileno,Gender) values('abc',983178971,'F')

		select *  from Customer12

		drop table Customer323

		CREATE TABLE Customer323 (
        CUSId INT NOT NULL IDENTITY(1, 1) PRIMARY KEY
        ,CUSKey varchar(5)  'Cus'+ (Year(Getdate())+convert(varchar(4),cusid)) 
        ,CusName VARCHAR(50)
         ,mobileno INT
        ,Gender VARCHAR(10)
        )
		

SELECT YEAR(GETDATE()) AS Year;
