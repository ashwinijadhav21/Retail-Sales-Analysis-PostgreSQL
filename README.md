
# 🛒 Retail Sales Analysis | SQL Project

## 📌 Project Overview

This project focuses on analyzing retail sales data using SQL to uncover meaningful insights into sales performance, customer behavior, product categories, and purchasing patterns.

The analysis involves data cleaning, exploratory analysis, and answering business-related questions using SQL queries. The goal is to transform raw transaction data into meaningful information that can support data-driven business decisions.

## 🎯 Project Objectives

- Clean and prepare retail transaction data for analysis.
- Analyze sales performance across different product categories.
- Identify high-value transactions and top-performing customers.
- Understand customer purchasing behavior across gender and age groups.
- Analyze monthly sales trends and identify the highest-performing month for each year.
- Evaluate transaction patterns based on different time periods of the day.

## 🛠️ Tools & Technologies

- **Database:** PostgreSQL
- **Language:** SQL
- **Concepts:** Data Cleaning, Data Analysis, Aggregation, Business Queries

## 📂 Dataset Description

The dataset contains retail transaction details, including:

| Column | Description |
|---|---|
| transaction_id | Unique transaction identifier |
| sale_date | Date of transaction |
| sale_time | Time of transaction |
| customer_id | Unique customer identifier |
| gender | Gender of the customer |
| age | Age of the customer |
| category | Product category |
| price_per_unit | Price per unit of product |
| quantity | Number of units purchased |
| cogs | Cost of goods sold |
| total_sale | Total sales amount |

## 🧹 Data Cleaning & Preparation

The following data cleaning steps were performed:

- Checked the dataset for missing (`NULL`) values.
- Removed records containing missing values in the specified columns.
- Standardized gender values by replacing `M` with `Male` and `F` with `Female`.
- Reviewed the cleaned dataset to ensure consistency before performing analysis.

## 📊 Business Questions & Analysis

The project answers the following business questions:

1. Retrieve all transactions made on November 5, 2022.
2. Identify clothing transactions with a quantity greater than 2 during November 2022.
3. Calculate total sales revenue and transaction count for each product category.
4. Calculate the average age of customers purchasing products from the Beauty category.
5. Identify transactions with total sales greater than or equal to 1,000.
6. Analyze the number of transactions by gender within each product category.
7. Calculate monthly sales for each year and identify the highest-selling month.
8. Identify the top 5 customers based on total sales.
9. Calculate the number of unique customers purchasing from each product category.
10. Categorize transactions into Morning, Afternoon, and Evening shifts and analyze order volume.

## 💡 SQL Concepts Applied

- SELECT, WHERE, ORDER BY
- AND, BETWEEN
- GROUP BY
- Aggregate Functions: SUM(), COUNT(), AVG(), ROUND()
- DISTINCT and COUNT(DISTINCT)
- CASE Statements
- Date & Time Functions: EXTRACT()
- Common Table Expressions (CTEs)
- Window Functions: RANK()
- LIMIT

## 📈 Key Skills Demonstrated

- Data cleaning using SQL
- Exploratory data analysis
- Business-oriented problem solving
- Customer and category-level analysis
- Sales trend analysis
- Data aggregation and reporting
- Writing structured and optimized queries


## 🚀 How to Run the Project

1. Clone this repository.
2. Open PostgreSQL using pgAdmin or your preferred SQL editor.
3. Create a database for the project.
4. Import the retail sales analysis dataset into PostgreSQL.
5. Execute the SQL script.
6. Review the query outputs to explore sales and customer insights.

## 🔍 Business Value

This analysis helps businesses understand:

- Which product categories generate higher sales.
- How customer purchasing behavior varies across categories.
- Which customers contribute the highest sales.
- When sales activity is strongest.
- How monthly sales performance changes over time.

These insights can support inventory planning, customer targeting, sales strategy, and business performance monitoring.

## 📌 Conclusion

This project demonstrates the application of SQL for retail data analysis, from data cleaning and preparation to solving real-world business questions. By using aggregations, filtering, CTEs, window functions, and date-time analysis, the project highlights how SQL can be used to extract meaningful insights from transactional data and support data-driven decision-making.

---

**Author:** Ashwini Jadhav  
**Project:** Retail Sales Analysis  
**Domain:** Data Analytics  
**Technology:** PostgreSQL | SQL
