-- Total Number of Transactions per Book
SELECT b.title, COUNT(t.transaction_id) AS total_transactions
FROM Transactions t
JOIN Books b ON t.book_id = b.book_id
GROUP BY b.title;
