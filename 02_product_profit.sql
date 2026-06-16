-- Identify the top 10 most profitable products (and loss-making products)

SELECT
    Product_Name,
    Sub_Category,
    ROUND(SUM(Profit), 0) AS total_profit,
    ROUND(SUM(Sales), 0) AS total_sales,
    COUNT(*) AS order_count
FROM orders
GROUP BY Product_Name, Sub_Category
ORDER BY total_profit DESC
LIMIT 10;

SELECT
    Product_Name,
    Sub_Category,
    ROUND(SUM(Profit), 0) AS total_profit,
    ROUND(SUM(Sales), 0) AS total_sales,
    COUNT(*) AS order_count,
    ROUND(AVG(Discount), 2) AS avg_discount
FROM orders
GROUP BY Product_Name, Sub_Category
HAVING total_profit < 0
ORDER BY total_profit ASC
LIMIT 10;