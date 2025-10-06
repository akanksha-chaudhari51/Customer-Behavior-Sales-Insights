-- 1. Most Popular Payment Method
SELECT
    payment_method,
    COUNT(order_id) AS method_count
FROM Orders
GROUP BY payment_method
ORDER BY method_count DESC;
