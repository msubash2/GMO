SELECT
		Prd.Category,
		AVG(Sal.SalePrice)		AS		AverageSalePrice
FROM
		dbo.Products AS Prd INNER JOIN
		dbo.Sales	 AS Sal ON Prd.ProductID = Sal.ProductID
GROUP BY
		Prd.Category