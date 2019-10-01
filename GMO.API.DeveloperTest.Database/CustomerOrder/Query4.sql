UPDATE
		Cust
SET
		StatusId = 2
FROM
		dbo.Customer	AS	Cust
WHERE
		Cust.CustomerId NOT IN (SELECT
										Cust.CustomerId
								FROM
										dbo.Customer		AS		Cust		INNER JOIN
										dbo.[Order]			AS		Ord			ON	Cust.CustomerId = Ord.CustomerId	
								WHERE
										Ord.OrderDate >= DATEADD(YEAR, -1, GETDATE()))