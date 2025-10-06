--  5. Sales and Customer Count by City
SELECT
    c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.order_amount) AS total_sales
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_sales DESC;
