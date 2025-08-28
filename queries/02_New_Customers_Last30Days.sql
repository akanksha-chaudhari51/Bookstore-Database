-- How many customers registered in the last 30 days?
SELECT COUNT(*) AS new_customers
FROM Customers
WHERE reg_date >= CURDATE() - INTERVAL 30 DAY;
