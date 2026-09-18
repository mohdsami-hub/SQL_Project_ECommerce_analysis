-- ============================================
-- Q9: Inventory Risk (Stock vs Sales Velocity)
-- Business Question: Which products are at risk of running out 
--                    of stock, and which ones aren't selling at all?
-- Concepts: CTE, date filtering, LEFT JOIN, COALESCE, CASE WHEN
-- ============================================

WITH recent_sales AS (
    SELECT 
        product_id,
        SUM(quantity) AS units_sold_90d
    FROM orders
    WHERE order_date >= DATE '2025-12-31' - INTERVAL '90 days'
      AND order_status = 'Delivered'
    GROUP BY product_id
)
SELECT 
    p.product_id,
    p.product_name,
    p.stock_quantity,
    COALESCE(r.units_sold_90d, 0) AS units_sold_90d,
    CASE 
        WHEN p.stock_quantity = 0 THEN 'Out of Stock'
        WHEN COALESCE(r.units_sold_90d, 0) > p.stock_quantity THEN 'Stockout Risk'
        WHEN COALESCE(r.units_sold_90d, 0) = 0 THEN 'Slow Mover'
        ELSE 'Healthy'
    END AS inventory_status
FROM products p
LEFT JOIN recent_sales r ON p.product_id = r.product_id
ORDER BY inventory_status, units_sold_90d DESC;