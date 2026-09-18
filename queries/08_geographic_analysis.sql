-- ============================================
-- Q8: Geographic Revenue Analysis by State
-- Business Question: Which states generate the most revenue,
--                    and how do they rank against each other?
-- Concepts: CTE, JOIN, AVG, COUNT(DISTINCT), RANK() window function
-- ============================================

WITH state_revenue AS (
    SELECT 
        c.state,
        SUM(o.revenue) AS total_revenue,
        ROUND(AVG(o.revenue), 2) AS avg_order_value,
        COUNT(DISTINCT c.customer_id) AS customer_count
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    WHERE o.order_status = 'Delivered'
    GROUP BY c.state
)
SELECT *,
    RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
FROM state_revenue;