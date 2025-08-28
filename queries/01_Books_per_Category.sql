-- How many books exist in each category?
SELECT c.category_name, COUNT(b.book_id) AS num_books
FROM Categories c
LEFT JOIN Books b ON c.category_id = b.category_id
GROUP BY c.category_name;
