CREATE DATABASE shop ;
USE shop ;
CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    salesperson VARCHAR(50),
    region VARCHAR(50),
    amount DECIMAL(10, 2)
);
INSERT INTO sales (salesperson, region, amount) VALUES
('Amit', 'North', 5000.00),
('Amit', 'North', 3000.00),
('Neha', 'South', 7000.00),
('Neha', 'South', 2000.00),
('Raj', 'East', 4000.00),
('Raj', 'East', 6000.00);
SELECT * FROM sales;
SELECT salesperson, SUM(amount) AS total_sales
FROM sales
GROUP BY salesperson;
SELECT region, COUNT(*) AS number_of_sales
FROM sales
GROUP BY region;
SELECT salesperson, AVG(amount) AS avg_sales
FROM sales
GROUP BY salesperson;
SELECT salesperson, SUM(amount) AS total_sales
FROM sales
GROUP BY salesperson
HAVING SUM(amount) > 8500;

