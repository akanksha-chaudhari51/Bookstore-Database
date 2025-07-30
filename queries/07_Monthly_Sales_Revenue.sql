-- Monthly Revenue from Book Sales
SELECT
	MONTH(transaction_date) AS month,
 	SUM(b.price * t.quantity) AS total_revenue
FROM Transactions t
JOIN Books b ON t.book_id = b.book_id
WHERE t.transaction_type = 'Sale'
GROUP BY month
ORDER BY month;
