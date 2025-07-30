-- Customer Purchase Summary with Total Spending
SELECT
 	c.name,
 	COUNT(t.transaction_id) AS total_transactions,
 	SUM(b.price * t.quantity) AS total_spent
FROM Transactions t
JOIN Customers c ON t.customer_id = c.customer_id
JOIN Books b ON t.book_id = b.book_id
WHERE t.transaction_type = 'Sale'
GROUP BY c.customer_id
ORDER BY total_spent DESC;
