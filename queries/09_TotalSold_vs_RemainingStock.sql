-- Total sold vs remaining stock per book
SELECT b.title,
       IFNULL(SUM(CASE WHEN t.transaction_type='Sale' THEN t.quantity END),0) AS total_sold,
       b.stock AS remaining_stock
FROM Books b
LEFT JOIN Transactions t ON b.book_id = t.book_id
GROUP BY b.book_id;
