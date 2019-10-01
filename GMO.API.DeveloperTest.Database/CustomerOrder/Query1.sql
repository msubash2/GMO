SELECT
		*
FROM
		dbo.Customer	AS		Custr
WHERE
		Custr.CustomerId NOT IN (
									SELECT
											Cust.CustomerId
									FROM
											dbo.Customer		AS		Cust		INNER JOIN
											dbo.[Order]			AS		Ord			ON	Cust.CustomerId = Ord.CustomerId	INNER JOIN
											dbo.OrderDetail		AS		OrdeDet		ON	Ord.OrderId = OrdeDet.OrderId 
									WHERE
											OrdeDet.ItemId = 100 AND
											Ord.OrderDate >= DATEADD(YEAR, -1, GETDATE())
								)	