-- Stock Status Classification of All Books
SELECT title, stock,
CASE
	WHEN stock = 0 THEN 'Out of Stock'
	WHEN stock <= 10 THEN 'Low Stock'
	ELSE 'In Stock'
END AS stock_status
FROM Books
ORDER BY stock_status, stock ASC;
