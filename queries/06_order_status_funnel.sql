-- ============================================
-- Q6: Order Status / Fulfillment Funnel
-- Business Question: What percentage of all orders end up 
--                    Delivered vs Cancelled vs Returned, etc.?
-- Concepts: Window function SUM() OVER(), nested aggregation, ROUND()
-- ============================================

-- Overall breakdown across all orders
SELECT 
    order_status,
    COUNT(*) AS order_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM orders
GROUP BY order_status
ORDER BY order_count DESC;


-- Bonus: same breakdown, but within each state separately
SELECT 
    c.state,
    o.order_status,
    COUNT(*) AS order_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY c.state), 2) AS pct_within_state
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.state, o.order_status
ORDER BY c.state, order_count DESC;