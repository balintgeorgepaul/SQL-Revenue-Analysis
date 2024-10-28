
-- 1. Drop existing tables if they exist (this avoids the foreign key constraint issue)
drop table if exists order_details;
drop table if exists orders;
drop table if exists products;
drop table if exists users;


create table users (
    user_id int identity(1,1),
    name varchar(100),
    email varchar(100),
    registration_date date
);

create table products (
    product_id int identity(1,1),
    product_name varchar(100),
    category varchar(50),
    price decimal(10, 2)
);

create table orders (
    order_id int identity(1,1),
    user_id int,  -- User ID without foreign key constraint
    order_date date,
    total_amount decimal(10, 2)
);

create table order_details (
    order_detail_id int identity(1,1),
    order_id int,  -- Order ID without foreign key constraint
    product_id int,  -- Product ID without foreign key constraint
    quantity int,
    price decimal(10, 2)
);


