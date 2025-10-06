-- 4. Top 5 Cities by Total Revenue
SELECT
    c.city,
    SUM(o.order_amount) AS total_revenue
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC
LIMIT 5;
