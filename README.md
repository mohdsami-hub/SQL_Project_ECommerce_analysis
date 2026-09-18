# 🛒 E-Commerce Sales Analysis using SQL

## 📌 Project Overview
This project is an end-to-end SQL analysis of an e-commerce company's sales data (customers, products, orders). I solved 10 real-world business questions that are part of a Data Analyst's daily work — covering customer value, retention, segmentation, profitability, discounting, fulfillment, payment behavior, geography, inventory, and revenue growth.

## 🗂️ Dataset
- **customers.csv** — 1200+ customer records (ID, name, email, city, state, gender, signup date)
- **products.csv** — 100 products (category, subcategory, price, stock)
- **orders.csv** — 6000+ order transactions (revenue, profit, discount, payment method, order status)

## 🛠️ Tools Used
- PostgreSQL
- VS Code with SQL extension
- Git & GitHub for version control

## 📊 Business Questions & Key Concepts

| # | Business Question | SQL Concepts Used |
|---|---|---|
| 1 | Top 20 customers by revenue & profit (CLV) | JOIN, GROUP BY, SUM |
| 2 | Monthly cohort retention analysis | CTE, TO_CHAR, JOIN, COUNT(DISTINCT) |
| 3 | RFM customer segmentation | CTE, NTILE() window function, CASE WHEN |
| 4 | Category/subcategory profitability | JOIN, multi-column GROUP BY, derived metric (margin %) |
| 5 | Discount band impact on profit margin | CASE WHEN (binning), GROUP BY on derived column |
| 6 | Order status / fulfillment funnel | Window function SUM() OVER() |
| 7 | Payment method behavior (cancellation/return rate) | Conditional aggregation SUM(CASE WHEN) |
| 8 | Geographic revenue analysis by state | CTE, RANK() window function |
| 9 | Inventory risk (stock vs sales velocity) | LEFT JOIN, COALESCE |
| 10 | Monthly revenue growth (MoM %) | CTE, LAG() window function |

## 🔍 Key Insights
- **Top customer:** Ananya Chaudhary generated ₹672,928.82 in total revenue, the single highest-spending customer in the dataset
- **Retention:** The 2023-01 cohort stayed active over an extended tracked period, with monthly active customers ranging from 6–16 rather than a sharp early drop-off
- **Segmentation:** Of 1,128 customers, 245 (22%) are "Champions," 267 (24%) are "At Risk," and 616 (54%) are "Regular" — nearly a quarter of the base needs a win-back strategy
- **Profitability:** Sports (Fitness subcategory) has the highest profit margin at 31.58%, even though higher-revenue categories like Home and Electronics run notably thinner margins (~29%)
- **Discounts:** The 11–20% discount band is the clear winner — highest total profit (₹1.07 crore) *and* highest margin (30.08%); discounts above 20% shrink margin without a matching profit gain
- **Fulfillment:** 59.28% of orders are successfully Delivered, while 8.03% are Cancelled and 6.62% are Returned — nearly 15% of orders never complete successfully
- **Payment behavior:** UPI has the highest cancellation rate (10.01%), while Net Banking has the highest return rate (7.71%) — Cash on Delivery is actually one of the more reliable methods, contrary to common assumption
- **Geography:** Uttar Pradesh leads total revenue (₹2.65 crore) on volume (290 customers), while Haryana has the highest average order value (₹32,596) with far fewer customers (68)
- **Inventory:** Of 100 products, 97 are healthy and only 3 are at "Stockout Risk" — no dead stock currently sitting unsold
- **Growth trend:** Revenue is highly volatile month-to-month (roughly -41% to +62%); the strongest month was October 2025 (+62.24%), immediately followed by the sharpest decline in November 2025 (-41.46%)

## 📁 Project Structure
```
SQL_Project_ECommerce_analysis/
├── data/           → raw CSV files
├── schema/         → table creation scripts
├── queries/        → 10 business question SQL files
├── results/        → exported outputs / screenshots
└── README.md
```

## 🚀 How to Run
1. Clone the repo
2. Run `schema/create_tables.sql` to create the database structure
3. Import CSVs from the `data/` folder into their respective tables
4. Run any query from the `queries/` folder to see results

## 👤 Author
**Mohd Sami** — Aspiring Data Analyst  
🔗 [LinkedIn](https://www.linkedin.com/in/mohdsami-data)  
📧 mohdsami.workk@gmail.com