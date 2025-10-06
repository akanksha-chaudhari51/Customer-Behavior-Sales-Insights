--  10. Product Category Revenue 
SELECT
    p.category,
    SUM(od.quantity * od.unit_price) AS category_revenue
FROM OrderDetails od
JOIN Orders o ON od.order_id = o.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;
