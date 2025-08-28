-- Top 3 best-selling books by revenue
SELECT b.title, SUM(t.quantity * b.price) AS total_revenue
FROM Transactions t
JOIN Books b ON t.book_id = b.book_id
WHERE t.transaction_type = 'Sale'
GROUP BY b.book_id
ORDER BY total_revenue DESC
LIMIT 3;
