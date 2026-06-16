-- Segment discount rates into various tiers to analyze the impact of different discount levels on profitability

SELECT
    Category,
    CASE
        WHEN Discount = 0 THEN '0% no discount'
        WHEN Discount <= 0.1 THEN '1-10%'
        WHEN Discount <= 0.2 THEN '11-20%'
        WHEN Discount <= 0.3 THEN '21-30%'
        WHEN Discount <= 0.5 THEN '31-50%'
        ELSE 'over 50%'
    END AS discount_band,
    COUNT(*) AS order_count,
    ROUND(SUM(Sales), 0) AS total_sales,
    ROUND(SUM(Profit), 0) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM orders
GROUP BY Category, discount_band
ORDER BY Category, profit_margin_pct DESC;