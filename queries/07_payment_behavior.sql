-- ============================================
-- Q7: Payment Method Behavior
-- Business Question: Which payment method has the highest 
--                    cancellation/return rate, and which is 
--                    the most reliable?
-- Concepts: Conditional aggregation (SUM(CASE WHEN)), AVG, ROUND
-- ============================================

SELECT 
    payment_method,
    COUNT(*) AS total_orders,
    ROUND(AVG(revenue), 2) AS avg_order_value,
    ROUND(SUM(CASE WHEN order_status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS cancellation_rate_pct,
    ROUND(SUM(CASE WHEN order_status = 'Returned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS return_rate_pct
FROM orders
WHERE payment_method IS NOT NULL
GROUP BY payment_method
ORDER BY cancellation_rate_pct DESC;