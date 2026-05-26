CREATE DATABASE datawerehouse_ddl_mardi_wicaksana;

--Process Creating Table
CREATE TABLE dim_users (
    user_id INT PRIMARY KEY,
    gender VARCHAR(10),
    age INT,
    country VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE dim_products (
    product_id INT PRIMARY KEY,
    name VARCHAR(255),
    category VARCHAR(100),
    brand VARCHAR(100),
    retail_price FLOAT
);

CREATE TABLE dim_orders (
    order_id INT PRIMARY KEY,
    status VARCHAR(50),
    created_at TIMESTAMP,
    num_of_item INT,
    total_price FLOAT
);

CREATE TABLE fact_order_items (
    id INT PRIMARY KEY,
    order_id INT REFERENCES dim_orders(order_id),
    user_id INT REFERENCES dim_users(user_id),
    product_id INT REFERENCES dim_products(product_id),
    created_at TIMESTAMP,
    sale_price FLOAT
);

select * from dim_orders;
select * from dim_products;
select * from fact_order_items;
select * from dim_orders;


-- Top Sale Product
SELECT dp.product_id, dp.name, COUNT(*) AS total_sold
FROM fact_order_items foi 
join dim_products dp on foi.product_id = dp.product_id
GROUP BY dp.product_id, dp.name
ORDER BY total_sold DESC
LIMIT 10;

--Most Active User by gender and age and total spent
SELECT foi.user_id, u.gender, u.age, COUNT(*) AS total_transaction, SUM(o.total_price) AS total_spent
FROM fact_order_items foi
JOIN dim_users u ON foi.user_id = u.user_id
JOIN dim_orders o ON foi.order_id = o.order_id
GROUP BY foi.user_id, u.gender, u.age
ORDER BY total_spent DESC
LIMIT 10;

-- Total Revenue
SELECT SUM(total_price) AS total_revenue
FROM dim_orders;
