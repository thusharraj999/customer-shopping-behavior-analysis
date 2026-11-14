# Customer Shopping Behavior Analysis

## Project Overview

This project analyzes customer shopping behavior using Python, SQL, and an interactive HTML dashboard. The objective is to explore customer preferences, purchasing patterns, product performance, payment methods, customer ratings, and shopping trends to generate useful business insights.

The analysis uses a dataset containing **3,900 customer records**.

## Tools & Technologies

- **Python:** Pandas, NumPy, Matplotlib, Seaborn
- **SQL:** MySQL
- **Database Tool:** DBeaver
- **Dashboard:** Interactive HTML dashboard generated with Claude
- **Development Environment:** Jupyter Notebook

## Project Workflow

1. Data loading and inspection using Python.
2. Data cleaning and missing-value analysis.
3. Feature engineering, including age groups and purchase categories.
4. Exploratory Data Analysis (EDA) and visualizations.
5. Importing cleaned data into MySQL.
6. Writing SQL queries to answer business questions.
7. Creating an interactive HTML dashboard to present key findings.

## Key Business Questions

- Which product categories generate the highest purchase amounts?
- Which products are purchased most frequently?
- Which age groups have the highest customer representation?
- How do purchasing patterns differ by gender?
- Which payment methods are most commonly used?
- How does subscription status relate to average purchase amounts?
- Which seasons show higher recorded purchase amounts?
- What are the customer review trends across product categories?
- Which shipping methods are most popular?
- How do shopping preferences vary across customer segments?

## Key Findings

- **Customer Records:** 3,900 unique customers.
- **Total Recorded Purchase Amount:** $233,081.
- **Average Purchase Amount:** $59.76.
- **Top Category:** Clothing, with $104,264 in recorded purchase amounts.
- **Largest Age Segment:** Customers aged 56–70, with 1,105 records.
- **Most Selected Payment Method:** PayPal, with 677 records.
- **Highest Average Purchase by Season:** Fall, at $61.56.
- **Highest Average Product Rating by Category:** Footwear, at 3.79.
- **Subscription Adoption:** 27% of customers had an active subscription.

## SQL Analysis

The project includes 30 SQL business analysis queries covering:

- Data validation and summary statistics
- Category and product analysis
- Customer segmentation
- Payment and shipping analysis
- Seasonal trends
- Customer ratings and review segmentation
- State-wise purchasing patterns
- CTEs, subqueries, aggregate functions, and window functions

## Interactive Dashboard

An interactive HTML dashboard was generated with Claude using the project data. It presents important customer shopping metrics and analysis in a visual format.

Dashboard file: `dashboard/Customer Shopping Behavior Dashboard.html`

## Project Files

- `customer_shopping_behavior_analysis.ipynb` – Python analysis and visualizations.
- `customer_shopping_behavior_analysis.sql` – SQL business analysis queries.
- `dashboard/` – Interactive HTML dashboard.

## Important Data Limitation

Each row represents a customer's latest recorded purchase, rather than a complete transaction history. Therefore, purchase amounts are analyzed as recorded values in this dataset and should not be interpreted as lifetime customer spending or complete historical company revenue.

The 37 missing review ratings were retained as missing values and excluded from rating-based calculations.

## Conclusion

This project demonstrates practical skills in data cleaning, exploratory data analysis, SQL querying, data visualization, and business insight generation. It helped develop an understanding of how customer data can support business analysis and decision-making.
