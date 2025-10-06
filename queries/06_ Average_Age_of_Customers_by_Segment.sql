-- 6. Average Age of Customers by Segment
SELECT
    c.customer_segment,
    AVG(c.age) AS avg_customer_age,
    COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_segment
ORDER BY avg_customer_age DESC;
