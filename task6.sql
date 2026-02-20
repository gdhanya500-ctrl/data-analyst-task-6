USE sales_analysis;

DROP TABLE IF EXISTS online_sales;

CREATE TABLE online_sales (
order_id INT PRIMARY KEY,
order_date DATE,
amount DECIMAL(10,2),
product_id INT
);

INSERT INTO online_sales VALUES
(1,'2024-01-10',500,101),
(2,'2024-01-15',300,102),
(3,'2024-02-05',700,103),
(4,'2024-02-20',200,101),
(5,'2024-03-12',900,104),
(6,'2024-03-25',400,102),
(7,'2024-04-02',650,105),
(8,'2024-04-18',350,103),
(9,'2024-05-09',800,101),
(10,'2024-05-22',150,104);

SELECT * FROM online_sales;
SELECT
EXTRACT(YEAR FROM order_date) AS year,
EXTRACT(MONTH FROM order_date) AS month,
SUM(amount) AS total_revenue,
COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
SELECT
EXTRACT(YEAR FROM order_date) AS year,
EXTRACT(MONTH FROM order_date) AS month,
SUM(amount) AS revenue
FROM online_sales
GROUP BY year, month
ORDER BY revenue DESC
LIMIT 3;