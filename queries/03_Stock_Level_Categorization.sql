-- Categorize books by stock level
SELECT title, stock,
  CASE
    WHEN stock <= 10 THEN 'Low Stock'
    WHEN stock BETWEEN 11 AND 30 THEN 'Medium Stock'
    ELSE 'High Stock'
  END AS stock_category
FROM Books;
