-- ============================================
-- Q1: Customer Lifetime Value (CLV)
-- Business Question: Which top 20 customers are giving the 
--                    most revenue and profit to the business?
-- Concepts: JOIN, GROUP BY, SUM, ORDER BY, LIMIT
-- ============================================

SELECT 
    c.customer_id,
    c.customer_name,
    SUM(o.revenue) AS total_revenue,
    SUM(o.profit) AS total_profit,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_status = 'Delivered'
GROUP BY c.customer_id, c.customer_name
ORDER BY total_revenue DESC
LIMIT 20;