# 🛒 E-Commerce Sales Analysis using SQL

## 📌 Project Overview
This project is an end-to-end SQL analysis of an e-commerce company's sales data (customers, products, orders). I solved 10 real-world business questions that are part of a Data Analyst's daily work — covering areas like customer value, retention, profitability, and inventory risk.

## 🗂️ Dataset
- **customers.csv** — 1200+ customer records (ID, name, email, city, state, gender, signup date)
- **products.csv** — 100 products (category, subcategory, price, stock)
- **orders.csv** — 6000+ order transactions (revenue, profit, discount, payment method, order status)

## 🛠️ Tools Used
- MySQL / PostgreSQL (SQL queries)
- VS Code with SQL extension
- Git & GitHub for version control

## 📊 Business Questions & Key Concepts

| # | Business Question | SQL Concepts Used |
|---|---|---|
| 1 | Top 20 customers by revenue & profit (CLV) | JOIN, GROUP BY, SUM |
| 2 | Monthly cohort retention analysis | CTE, DATE_FORMAT, self-join logic |
| 3 | RFM customer segmentation | Window functions (NTILE), CASE |
| 4 | Category/subcategory profitability | Aggregation, derived metrics |
| 5 | Discount band impact on profit margin | CASE (binning), AVG |
| 6 | Order status / fulfillment funnel | Window functions (SUM OVER) |
| 7 | Payment method behavior (cancellation/return rate) | Conditional aggregation |
| 8 | Geographic revenue analysis by state | RANK(), CTE |
| 9 | Inventory risk (stock vs sales velocity) | LEFT JOIN, COALESCE |
| 10 | Monthly revenue growth (MoM %) | LAG() window function |

## 🔍 Key Insights (fill this in with your actual results)
- Top customer generated ₹X in total revenue
- [Category name] has the highest profit margin (~X%)
- Cash on Delivery has the highest cancellation rate (~X%)
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
