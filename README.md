# SQL Sales & Customer Order Analysis Project

## Project Overview

This project focuses on analyzing retail sales and customer order datasets using SQL.  
The main objective of this project was to generate business insights related to sales performance, customer behavior, profitability, and product analysis using SQL queries.

The project demonstrates practical SQL skills and business-oriented analytical thinking using structured retail datasets.

---

# Business Objective

The primary objectives of this project were to:

- Analyze retail sales performance
- Identify top-performing customers and products
- Evaluate profitability across categories
- Generate business insights using SQL
- Practice real-world SQL querying techniques
- Prepare data for future dashboard visualization

---

# Dataset Used

This project uses two retail datasets:

| Dataset | Description |
|----------|-------------|
| Customer_order | Contains customer order and transaction details |
| detail | Contains product-level sales, quantity, and profit information |

---

# Tools Used

| Tool | Purpose |
|------|----------|
| MySQL Workbench | SQL analysis |


---

# Database Tables

## 1. customer_order
This table contains:
- Customer details
- Order information
- Sales transaction records
- Regional information

## 2. detail
This table contains:
- Product details
- Quantity sold
- Profit information
- Category and sub-category details

---

# SQL Concepts Used

The following SQL concepts were used in this project:

- SELECT statements
- WHERE clause filtering
- GROUP BY aggregation
- ORDER BY sorting
- Aggregate functions:
  - SUM()
  - AVG()
  - COUNT()
- JOINS between multiple tables
- Business KPI calculations

---

# SQL Analysis Performed

The project includes SQL analysis for:

- Total sales calculation
- Profit analysis
- Product performance analysis
- Customer sales contribution
- Category-wise sales analysis
- Regional sales trends
- Loss-making product identification

---

# Business Questions Solved

Some important business questions solved in this project include:

1. What is the total sales revenue?
2. Which products generated the highest sales?
3. Which customers contributed the most revenue?
4. Which categories generated the highest profit?
5. What are the monthly sales trends?
6. Which products generated losses?
7. Which regions performed best in sales?

---

# Key Insights Generated

- High-performing product categories contributed significantly to revenue.
- Some products generated negative profit margins due to heavy discounts.
- Top customers contributed a large percentage of total sales.
- Sales performance varied across different regions.
- Certain product categories showed higher profitability than others.

---

# Project Folder Structure

```text
sql-sales-analysis-project/
│
├── Dataset/
│   ├── customer_order.csv
│   └── detail.csv
│
├── SQL_Queries/
│   └── Sales_Analysis_Queries.sql
│
├── Query_Screenshots/
│   ├── Total_Sales_Query.png
│   ├── Top_Customers_Query.png
│   └── Profit_Analysis_Query.png
│
├── Documentation/
│   └── SQL_Project_Documentation.pdf
│
└── README.md

