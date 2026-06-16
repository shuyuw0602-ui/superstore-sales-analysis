-- Calculate monthly sales figures and compare them against the previous month to track growth or decline

WITH monthly_sales AS (
    SELECT
        DATE_TRUNC('month', Order_Date) AS month,
        ROUND(SUM(Sales), 0) AS monthly_sales,
        ROUND(SUM(Profit), 0) AS monthly_profit
    FROM orders
    GROUP BY DATE_TRUNC('month', Order_Date)
)
SELECT
    month,
    monthly_sales,
    monthly_profit,
    LAG(monthly_sales) OVER (ORDER BY month) AS prev_month_sales,
    ROUND((monthly_sales - LAG(monthly_sales) OVER (ORDER BY month))
          / LAG(monthly_sales) OVER (ORDER BY month) * 100, 1) AS mom_growth_pct
FROM monthly_sales
ORDER BY month;