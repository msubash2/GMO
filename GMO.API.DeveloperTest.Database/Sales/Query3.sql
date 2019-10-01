SELECT
		Cust.FirstName,
		Cust.LastName,
		Sal.SalePrice,
		Prd.RecommendedPrice,
		ABS(Sal.SalePrice - Prd.RecommendedPrice)		AS		PriceDiff
FROM
		dbo.Customers	AS	Cust INNER JOIN
		dbo.Sales		AS	Sal	ON Cust.CustomerId = Sal.CustomerId INNER JOIN
		dbo.Products	AS	Prd ON Sal.ProductID = Prd.ProductID
ORDER BY
		Cust.FirstName,
		Cust.LastName