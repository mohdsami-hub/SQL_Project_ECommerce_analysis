-- ============================================
-- Q2: Cohort Retention Analysis
-- Business Question: Of the customers who signed up in a given month,
--                    how many placed orders in the following months?
-- Concepts: CTE (WITH), TO_CHAR, JOIN, GROUP BY, COUNT(DISTINCT)
-- ============================================

WITH cohort AS (
    SELECT 
        customer_id,
        TO_CHAR(signup_date, 'YYYY-MM') AS cohort_month
    FROM customers
),
orders_month AS (
    SELECT 
        customer_id,
        TO_CHAR(order_date, 'YYYY-MM') AS order_month
    FROM orders
)
SELECT 
    c.cohort_month,
    o.order_month,
    COUNT(DISTINCT o.customer_id) AS active_customers
FROM cohort c
JOIN orders_month o ON c.customer_id = o.customer_id
GROUP BY c.cohort_month, o.order_month
ORDER BY c.cohort_month, o.order_month;