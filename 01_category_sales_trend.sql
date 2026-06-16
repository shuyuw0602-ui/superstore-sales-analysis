-- Annual sales and profit performance for each product category
SELECT
    year,
    category,
    ROUND(SUM(Sales), 0) AS total_sales,
    ROUND(SUM(Profit), 0) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct,
    COUNT(DISTINCT Order_ID) AS order_count
FROM orders
GROUP BY year, Category
ORDER BY year, total_sales DESC;