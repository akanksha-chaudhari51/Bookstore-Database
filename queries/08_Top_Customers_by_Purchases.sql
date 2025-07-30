-- Top Customers by Number of Purchases
SELECT
	c.name,
 	COUNT(t.transaction_id) AS purchases
FROM Transactions t
JOIN Customers c ON t.customer_id = c.customer_id
WHERE t.transaction_type = 'Sale'
GROUP BY c.name
ORDER BY purchases DESC;
