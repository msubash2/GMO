SELECT
		TOP 1 TopCust.*
FROM
		(
			SELECT
					Cust.CustomerId,
					Cust.FirstName + ' ' + Cust.LastName	AS	CustomerName,
					Ord.OrderAmount,
					SUM(OrdeDet.Quantity)	AS	Quantity
			FROM
					dbo.Customer		AS		Cust		INNER JOIN
					dbo.[Order]			AS		Ord			ON	Cust.CustomerId = Ord.CustomerId	INNER JOIN
					dbo.OrderDetail		AS		OrdeDet		ON	Ord.OrderId = OrdeDet.OrderId 
			GROUP BY
					Cust.CustomerId,
					Ord.OrderAmount,
					Cust.FirstName + ' ' + Cust.LastName
			HAVING
					SUM(OrdeDet.Quantity) >= 5
		)	AS	TopCust
ORDER BY
		TopCust.OrderAmount DESC