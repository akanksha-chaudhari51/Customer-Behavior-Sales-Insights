-- 2. Average Order Amount by Discount
SELECT
    discount,
    ROUND(AVG(order_amount), 2) AS avg_order_amount
FROM Orders
GROUP BY discount
ORDER BY discount;
