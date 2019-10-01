SELECT
		OrdeDet.OrderId,
		Ord.OrderDate,
		Cat.CategoryName,
		Itm.ItemName,
		OrdeDet.Quantity
FROM
		dbo.OrderDetail		AS		OrdeDet		INNER JOIN
		dbo.Item			AS		Itm			ON	OrdeDet.ItemId = Itm.ItemId INNER JOIN
		dbo.[Order]			AS		Ord			ON  OrdeDet.OrderId = Ord.OrderId INNER JOIN
		dbo.Category		AS		Cat			ON	Itm.CategoryId = Cat.CategoryId
WHERE
		OrdeDet.OrderId IN
		(
			SELECT 
					Main.OrderId
			FROM
					(SELECT 
							OrdeDet.OrderId,
							SUM(OrdeDet.Quantity)	AS		TotalQuantity
					FROM 
							dbo.[Order]			AS		Ord		INNER JOIN
							dbo.OrderDetail		AS		OrdeDet		ON	Ord.OrderId = OrdeDet.OrderId	INNER JOIN
							dbo.Item			AS		Itm			ON	OrdeDet.ItemId = Itm.ItemId
					GROUP BY
							OrdeDet.OrderId,
							Ord.OrderDate
					HAVING
							SUM(OrdeDet.Quantity) > 10)	AS Main
		)	