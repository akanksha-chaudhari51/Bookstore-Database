-- Average Book Price by Category (Filtered by Value)
SELECT
    c.category_name,
    AVG(b.price) AS average_book_price_in_category,
    COUNT(b.book_id) AS number_of_books_in_category
FROM Categories c
JOIN Books b ON c.category_id = b.category_id
GROUP BY c.category_id, c.category_name
HAVING AVG(b.price) > 350
ORDER BY average_book_price_in_category DESC;
