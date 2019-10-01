DECLARE @CustomerId INT


BEGIN TRAN

BEGIN TRY


INSERT INTO 
			[dbo].[Customers] ([FirstName], [LastName], [City], [State], [Zip])
VALUES 
			('Chris', 'Kringle', 'Henryville', 'IN', '47126')

SELECT @CustomerId = SCOPE_IDENTITY()


INSERT INTO 
			[dbo].[Sales]([ProductID], [CustomerID], [SalePrice], [SaleDate])
VALUES
           (3, @CustomerId, '205', '12/31/2005')

COMMIT TRAN

END TRY
BEGIN CATCH

	ROLLBACK TRAN
	SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_SEVERITY() AS ErrorSeverity, ERROR_STATE() AS ErrorState,
		   ERROR_PROCEDURE() AS ErrorProcedure, ERROR_LINE() AS ErrorLine, ERROR_MESSAGE() AS ErrorMessage; 

END CATCH



