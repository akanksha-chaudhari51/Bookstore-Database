-- Day with highest revenue
SELECT t.transaction_date, SUM(t.quantity * b.price) AS daily_revenue
FROM Transactions t
JOIN Books b ON t.book_id = b.book_id
WHERE t.transaction_type = 'Sale'
GROUP BY t.transaction_date
ORDER BY daily_revenue DESC
LIMIT 1;
