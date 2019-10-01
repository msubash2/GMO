SELECT
		Cust.CustomerID,
		Cust.FirstName,
		Cust.LastName
FROM
		dbo.Customers	AS	Cust
WHERE
		Cust.CustomerID NOT IN (SELECT
										Cust.CustomerID
								FROM
										dbo.Customers	AS	Cust INNER JOIN
										dbo.Sales		AS	Sal	ON Cust.CustomerId = Sal.CustomerId)