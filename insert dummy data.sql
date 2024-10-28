
insert into users (name, email, registration_date)
values 
    ('John Doe', 'johndoe@example.com', '2023-01-15'),
    ('Jane Smith', 'janesmith@example.com', '2023-02-10'),
    ('Alice Johnson', 'alicejohnson@example.com', '2023-03-05');

insert into products (product_name, category, price)
values 
    ('Laptop', 'Electronics', 1200.00),
    ('Headphones', 'Electronics', 150.00),
    ('Coffee Maker', 'Appliances', 80.00),
    ('Office Chair', 'Furniture', 300.00),
    ('Notebook', 'Stationery', 5.00);

insert into orders (user_id, order_date, total_amount)
values 
    (1, '2023-06-15', 1250.00),
    (2, '2023-06-17', 85.00),
    (1, '2023-07-02', 305.00);

insert into order_details (order_id, product_id, quantity, price)
values 
    (1, 1, 1, 1200.00),
    (1, 2, 1, 150.00),
    (2, 3, 1, 80.00),
    (3, 4, 1, 300.00),
    (3, 5, 1, 5.00);
