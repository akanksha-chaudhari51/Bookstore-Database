-- List All Customers Registered in the Last 60 Days
SELECT *
FROM Customers
WHERE reg_date >= CURDATE() - INTERVAL 60 DAY;
