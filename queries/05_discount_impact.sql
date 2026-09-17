-- ============================================
-- Q5: Discount Band Impact on Profit Margin
-- Business Question: Which discount range brings in the most 
--                    total profit for the business, not just 
--                    the most orders?
-- Concepts: CASE WHEN (binning), GROUP BY on derived column, 
--           SUM, COUNT, derived margin metric
-- ============================================

SELECT 
    CASE 
        WHEN discount_pct = 0 THEN '0%'
        WHEN discount_pct BETWEEN 0.01 AND 10 THEN '1-10%'
        WHEN discount_pct BETWEEN 10.01 AND 20 THEN '11-20%'
        ELSE '20%+'
    END AS discount_band,
    COUNT(order_id) AS orders_count,
    SUM(revenue) AS total_revenue,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / SUM(revenue) * 100, 2) AS margin_pct
FROM orders
WHERE order_status = 'Delivered'
GROUP BY discount_band
ORDER BY discount_band;