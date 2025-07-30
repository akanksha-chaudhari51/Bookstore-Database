-- Average Price of Books per Category
SELECT c.category_name, AVG(b.price) AS avg_price
FROM Books b
JOIN Categories c ON b.category_id = c.category_id
GROUP BY c.category_name;
