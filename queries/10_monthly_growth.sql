-- ============================================
-- Q10: Monthly Revenue Growth (Month-over-Month %)
-- Business Question: How is revenue trending month to month —
--                    which months grew, and which months declined?
-- Concepts: CTE, TO_CHAR, LAG() window function, derived growth metric
-- ============================================

WITH monthly AS (
    SELECT 
        TO_CHAR(order_date, 'YYYY-MM') AS month,
        SUM(revenue) AS total_revenue
    FROM orders
    WHERE order_status = 'Delivered'
    GROUP BY TO_CHAR(order_date, 'YYYY-MM')
)
SELECT 
    month,
    total_revenue,
    LAG(total_revenue, 1) OVER (ORDER BY month) AS prev_month_revenue,
    ROUND(
        (total_revenue - LAG(total_revenue, 1) OVER (ORDER BY month)) 
        / LAG(total_revenue, 1) OVER (ORDER BY month) * 100, 
    2) AS mom_growth_pct
FROM monthly
ORDER BY month;