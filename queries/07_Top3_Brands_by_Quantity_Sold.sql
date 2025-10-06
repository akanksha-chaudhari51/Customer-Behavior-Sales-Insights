-- 7. Top 3 Brands by Quantity Sold
SELECT
    p.brand,
    SUM(od.quantity) AS total_quantity_sold
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.brand
ORDER BY total_quantity_sold DESC
LIMIT 3;
