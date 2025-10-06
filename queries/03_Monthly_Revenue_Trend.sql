-- 3. Monthly Revenue Trend 
SELECT
    DATE_FORMAT(order_date, '%m-%Y') AS order_month,
    SUM(order_amount) AS monthly_revenue
FROM Orders
GROUP BY order_month
ORDER BY order_month;
