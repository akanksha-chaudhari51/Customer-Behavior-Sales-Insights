-- Insert data into customer table
INSERT INTO Customers (customer_id, name, gender, age, city, reg_date, customer_segment)
VALUES (101, 'Ravi Sharma', 'Male', 30, 'Mumbai', '2025-09-10', 'Gold');

-- Insert data into product table
INSERT INTO Products (product_id, product_name, category, price, brand)
VALUES (201, 'Maggi Noodles 12-pack', 'Snacks', 350.00, 'Nestle');

-- Insert data into order table
INSERT INTO Orders (order_id, customer_id, order_date, order_amount, payment_method, discount, status)
VALUES (301, 101, '2025-08-15', 700.00, 'UPI', 10, 'Delivered');

-- Insert data into orderdetails table
INSERT INTO OrderDetails (order_detail_id, order_id, product_id, quantity, unit_price)
VALUES (401, 301, 201, 2, 350.00);
