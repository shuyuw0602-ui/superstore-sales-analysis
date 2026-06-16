-- Evaluate the shipping efficiency and profit performance of various regional and shipping method combinations

SELECT
    Region,
    Ship_Mode,
    COUNT(*) AS order_count,
    ROUND(AVG(DATEDIFF('day', Order_Date, Ship_Date)), 1) AS avg_ship_days,
    ROUND(SUM(Sales), 0) AS total_sales,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 1) AS profit_margin
FROM orders
GROUP BY Region, Ship_Mode
ORDER BY Region, avg_ship_days;