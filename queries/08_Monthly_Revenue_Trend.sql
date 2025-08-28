-- Monthly revenue trend
SELECT DATE_FORMAT(t.transaction_date,'%Y-%m') AS month,
       SUM(t.quantity * b.price) AS monthly_revenue
FROM Transactions t
JOIN Books b ON t.book_id = b.book_id
WHERE t.transaction_type = 'Sale'
GROUP BY month
ORDER BY month;
