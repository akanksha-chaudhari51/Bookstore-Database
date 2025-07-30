-- Top 3 Best-Selling Books (by Quantity Sold)
SELECT b.title, SUM(t.quantity) AS total_sold
FROM Transactions t
JOIN Books b ON t.book_id = b.book_id
WHERE t.transaction_type = 'Sale'
GROUP BY b.title
ORDER BY total_sold DESC
LIMIT 3;
