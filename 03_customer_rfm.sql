-- Extract basic RFM data for each customer to identify high-value clients

SELECT
    Customer_ID,
    Customer_Name,
    Segment,
    DATEDIFF('day', MAX(Order_Date), '2018-01-01') AS recency_days,
    COUNT(DISTINCT Order_ID) AS frequency,
    ROUND(SUM(Sales), 2) AS monetary,
    ROUND(SUM(Profit), 2) AS total_profit
FROM orders
GROUP BY Customer_ID, Customer_Name, Segment
ORDER BY monetary DESC
LIMIT 20;
