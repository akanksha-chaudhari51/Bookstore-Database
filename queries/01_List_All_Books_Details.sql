-- List All Books with Authors and Categories
SELECT b.title, a.name AS author, c.category_name
FROM Books b
JOIN Authors a ON b.author_id = a.author_id
JOIN Categories c ON b.category_id = c.category_id;
