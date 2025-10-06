-- 9. High-Value Orders by Customer Segment
SELECT
    CASE
        WHEN order_amount > 900 THEN 'High Value'
        WHEN order_amount > 500 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_value_tier,
    COUNT(order_id) AS number_of_orders,
    ROUND(AVG(order_amount), 2) AS avg_order_amount
FROM Orders
GROUP BY order_value_tier
ORDER BY number_of_orders DESC;
