-- Old books (before 2000) still in stock
SELECT title, published_year, stock
FROM Books
WHERE published_year < 2000 AND stock > 0;
