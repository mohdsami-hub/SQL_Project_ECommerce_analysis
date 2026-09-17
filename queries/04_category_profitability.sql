-- ============================================
-- Q4: Category/Subcategory Profitability
-- Business Question: Which categories bring in the most revenue,
--                    and which ones have the best profit margin?
-- Concepts: JOIN, multi-column GROUP BY, derived metric, ROUND()
-- ============================================

SELECT 
    p.category,
    p.subcategory,
    SUM(o.revenue) AS total_revenue,
    SUM(o.profit) AS total_profit,
    ROUND(SUM(o.profit) / SUM(o.revenue) * 100, 2) AS profit_margin_pct
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE o.order_status = 'Delivered'
GROUP BY p.category, p.subcategory
ORDER BY profit_margin_pct DESC;