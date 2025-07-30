 --  Insert sample author into the Authors table
INSERT INTO Authors (name, country)
VALUES ('Dan Brown', 'USA'); 

--  Insert sample category into the Categories table
INSERT INTO Categories (category_name) 
VALUES ('Mystery');

--  Insert sample book into the Books table
INSERT INTO Books (title, author_id, category_id, price, stock, published_year)
VALUES ('The Da Vinci Code', 1, 1, 449.00, 10, 2003); 

--  Insert sample customer into the Customers table
INSERT INTO Customers (name, email, phone, reg_date)
VALUES ('Aarav Mehta', 'aarav@gmail.com', '9876543210', '2025-01-15');

-- Insert sample transaction into the Transactions table
INSERT INTO Transactions (customer_id, book_id, quantity, transaction_date, transaction_type)
VALUES (1, 1, 1, '2025-07-20', 'Sale');
