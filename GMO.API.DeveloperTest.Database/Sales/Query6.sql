BEGIN TRAN

	DELETE FROM dbo.Customers WHERE [State] = 'CA'
	SELECT * FROM dbo.Customers

ROLLBACK TRAN		--Rollback Tran since I don't want to really delete the records.