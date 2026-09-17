# 🛒 E-Commerce Sales Analysis using SQL

## 📌 Project Overview
This project is an end-to-end SQL analysis of an e-commerce company's sales data (customers, products, orders). I solved 10 real-world business questions that are part of a Data Analyst's daily work — covering areas like customer value, retention, profitability, and inventory risk.

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
| 6 | Order status / fulfillment funnel | Window functions (SUM OVER) |
| 7 | Payment method behavior (cancellation/return rate) | Conditional aggregation |
| 8 | Geographic revenue analysis by state | RANK(), CTE |
| 9 | Inventory risk (stock vs sales velocity) | LEFT JOIN, COALESCE |
| 10 | Monthly revenue growth (MoM %) | LAG() window function |

## 🔍 Key Insights
- Top customer (Ananya Chaudhary) generated ₹672,928.82 in total revenue
- [Fill in: which cohort month had the strongest retention, and what % remained by which later month]
- [Fill in: how many customers landed in "Champion" vs "At Risk" segments]
- [Fill in: which category/subcategory has the highest profit margin (~X%), and how it compares to the highest-revenue category]
- [Fill in: which discount band drives the highest total profit, even if it isn't the band with the highest margin %]
- [State name] leads in revenue
- [Month] saw the highest MoM growth (X%)

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