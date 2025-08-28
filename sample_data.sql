-- Insert data into authors table
INSERT INTO Authors (name, country) VALUES
('Matt Haig', 'UK');

-- Insert data into categories table
INSERT INTO Categories (category_name) VALUES
('Fiction');

-- Insert data into books table
INSERT INTO Books (title, author_id, category_id, price, stock, published_year) VALUES
('The Midnight Library', 1, 1, 499, 25, 2020);

-- Insert data into customers table
INSERT INTO Customers (name, email, phone, city, reg_date) VALUES
('Riya Sharma', 'riya@gmail.com', '9876543230', 'Delhi', '2025-08-25');

-- Insert data into transactions table
INSERT INTO Transactions (customer_id, book_id, quantity, transaction_date, transaction_type) VALUES
(1, 1, 1, '2025-08-28', 'Sale');
