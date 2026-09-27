# 🛒 E-Commerce Sales Analysis

## 📌 Project Overview

This project focuses on analyzing e-commerce sales data using **Python, SQL, and MySQL** to uncover meaningful business insights related to sales performance, customer behavior, product performance, revenue trends, and seller performance.

The project combines SQL-based business analysis with Python-based data processing and visualization to understand different aspects of an e-commerce business.

## 🎯 Objectives

The main objectives of this project are to:

- Analyze overall e-commerce sales performance
- Understand customer distribution across different states and cities
- Analyze monthly and yearly order trends
- Identify high-performing product categories
- Analyze seller-wise revenue
- Study customer spending behavior
- Calculate cumulative sales over time
- Analyze Year-over-Year (YoY) sales growth
- Identify top-spending customers
- Explore the relationship between product price and purchase frequency
- Practice advanced SQL techniques for business analysis

---

## 🛠️ Tools & Technologies

### Programming & Analysis
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn

### Database & SQL
- MySQL
- SQL
- Common Table Expressions (CTEs)
- Window Functions
- Aggregate Functions
- Joins
- Subqueries
- `LAG()`
- `DENSE_RANK()`
- Moving Averages
- Running Totals

### Environment
- Jupyter Notebook
- VS Code
- GitHub

---

## 📈 Key Findings

- The dataset contains customers distributed across multiple Brazilian states and cities.
- São Paulo (`SP`) has the highest number of customers among the states analyzed.
- A total of **135,303 orders** were recorded in 2017.
- **January 2018** recorded the highest number of orders among the months analyzed.
- Total sales increased from approximately **65.25 million in 2017** to approximately **78.30 million in 2018**.
- Year-over-Year (YoY) sales growth from 2017 to 2018 was approximately **20%**.
- The analysis identifies the **highest-spending customers** for each year using SQL ranking techniques.
- Seller-level revenue analysis was performed to identify sellers with higher sales contributions.
- **Moving averages** were used to analyze order-value trends over time.

 > **Note:** `geolocation.csv` is not included in this repository because of its large file size.

## 📂 Project Structure

```text
ecommerce-sales-analysis/
│
├── README.md
│
├── ecommerce - GitHub.ipynb
│
├── data/
│   ├── customers.csv
│   ├── order_items.csv
│   ├── orders.csv
│   ├── payments.csv
│   ├── products.csv
│   └── sellers.csv
│
└── sql/
    ├── README.md
    ├── ecommerce.sql
    ├── order_items.sql
    ├── orders.sql
    └── payments.sql
