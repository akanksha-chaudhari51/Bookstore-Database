-- Average price of books sold per city
SELECT c.city, ROUND(AVG(b.price),2) AS avg_price
FROM Transactions t
JOIN Customers c ON t.customer_id = c.customer_id
JOIN Books b ON t.book_id = b.book_id
WHERE t.transaction_type = 'Sale'
GROUP BY c.city;
