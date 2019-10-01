SELECT
		Cust.FirstName,
		Cust.LastName,
		Prd.ProductName,
		Sal.SalePrice
FROM
		dbo.Customers	AS	Cust LEFT OUTER JOIN
		dbo.Sales		AS	Sal	ON Cust.CustomerId = Sal.CustomerId INNER JOIN
		dbo.Products	AS	Prd ON Sal.ProductID = Prd.ProductID
WHERE
		YEAR(SaleDate) = 2005 AND
		MONTH(SaleDate) = 10