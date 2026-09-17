-- ============================================
-- Q3: RFM Customer Segmentation
-- Business Question: Which customers are "Champions", which are 
--                    "At Risk", and which are "Regular" based on 
--                    how recently, how often, and how much they buy?
-- Concepts: CTE (WITH), NTILE() window function, CASE WHEN
-- ============================================

WITH rfm_base AS (
    SELECT 
        customer_id,
        DATE '2025-12-31' - MAX(order_date) AS recency_days,
        COUNT(order_id) AS frequency,
        SUM(revenue) AS monetary
    FROM orders
    WHERE order_status = 'Delivered'
    GROUP BY customer_id
),
rfm_scored AS (
    SELECT *,
        NTILE(5) OVER (ORDER BY recency_days DESC) AS r_score,
        NTILE(5) OVER (ORDER BY frequency ASC) AS f_score,
        NTILE(5) OVER (ORDER BY monetary ASC) AS m_score
    FROM rfm_base
)
SELECT *,
    CASE 
        WHEN r_score >= 4 AND f_score >= 4 THEN 'Champion'
        WHEN r_score <= 2 AND f_score <= 2 THEN 'At Risk'
        ELSE 'Regular'
    END AS segment
FROM rfm_scored
ORDER BY segment, monetary DESC;