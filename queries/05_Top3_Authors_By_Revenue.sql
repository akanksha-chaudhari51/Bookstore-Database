-- Top 3 authors by revenue
SELECT a.name AS author_name, SUM(t.quantity * b.price) AS revenue
FROM Transactions t
JOIN Books b ON t.book_id = b.book_id
JOIN Authors a ON b.author_id = a.author_id
WHERE t.transaction_type = 'Sale'
GROUP BY a.author_id
ORDER BY revenue DESC
LIMIT 3;
