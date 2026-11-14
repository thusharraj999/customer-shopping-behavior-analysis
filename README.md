# Customer Shopping Behavior Analysis

## 1. Project Overview

Customer Shopping Behavior Analysis is a data analytics portfolio project that explores customer purchasing patterns, product preferences, shopping frequency, payment methods, shipping choices, and customer satisfaction.

The project uses Python for data cleaning and exploratory data analysis, MySQL for business-oriented SQL analysis, and an interactive HTML dashboard for presenting insights.

The dataset contains **3,900 customer records and 18 original columns**. Two additional analytical features, Age Group and Purchase Category, were created during data preparation.

## 2. Project Objectives

- Understand customer shopping and purchasing patterns.
- Identify popular product categories and individual products.
- Analyze customer segments based on age and gender.
- Examine payment methods and shipping preferences.
- Explore seasonal purchasing patterns.
- Evaluate customer review ratings and satisfaction.
- Generate meaningful business insights using Python and SQL.
- Present findings through an interactive dashboard.

## 3. Tools and Technologies

| Tool | Purpose |
|---|---|
| Python | Data analysis and cleaning |
| Pandas | Data manipulation |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |
| Seaborn | Statistical visualization |
| MySQL | Database management and SQL analysis |
| DBeaver | SQL development environment |
| Jupyter Notebook | Python development |
| Claude | Assistance in generating the HTML dashboard |
| HTML | Interactive dashboard presentation |

## 4. Project Workflow

### Step 1: Data Loading and Inspection
- Imported the dataset using Pandas.
- Examined the dataset structure, dimensions, and data types.
- Checked missing values and duplicate records.
- Performed descriptive statistical analysis.

### Step 2: Data Cleaning
- Checked and removed duplicate records.
- Identified 37 missing values in Review Rating.
- Retained missing review ratings instead of imputing them.
- Validated numerical and categorical values.

### Step 3: Feature Engineering
Created two additional analytical columns:

- **Age Group:** Segmented customers into five age groups: 18–25, 26–35, 36–45, 46–55, and 56–70.
- **Purchase Category:** Classified purchase amounts into Low, Medium, High, and Premium segments.

### Step 4: Exploratory Data Analysis
Used Python to explore:
- Customer demographics
- Product and category performance
- Purchase amounts
- Subscription status
- Payment methods
- Shopping frequency
- Seasonal trends
- Shipping preferences
- Customer ratings
- Geographic purchasing patterns

### Step 5: SQL Analysis
Imported the cleaned dataset into MySQL and performed 30 business analysis queries using:
- SELECT, WHERE and ORDER BY
- GROUP BY and aggregate functions
- CASE statements
- Subqueries
- Common Table Expressions (CTEs)
- Window functions
- Ranking and customer segmentation

### Step 6: Interactive Dashboard
An interactive HTML dashboard was generated with assistance from Claude using the cleaned project data to present key metrics and shopping behavior insights.

## 5. Key Project Statistics

| Metric | Result |
|---|---:|
| Total Customer Records | 3,900 |
| Total Recorded Purchase Amount | $233,081 |
| Average Purchase Amount | $59.76 |
| Average Customer Age | 44.07 |
| Average Review Rating | 3.75 |
| Customers with Subscription | 1,053 |
| Subscription Adoption | 27% |

## 6. Key Business Insights

### Product and Category Analysis
- Clothing recorded the highest purchase amount at $104,264.
- Blouse, Pants, and Jewelry were tied as the most frequently purchased individual products, with 171 records each.
- T-shirt had the highest average purchase amount among products at $62.91.

### Customer Demographics
- Customers aged 56–70 formed the largest age group, with 1,105 records.
- Customers aged 18–25 had the highest average purchase amount at $60.65.
- Male customers represented 2,652 records, while female customers represented 1,248.

### Payment Analysis
- PayPal was the most frequently recorded payment method, with 677 customers.
- Credit Card recorded the highest total purchase amount at $40,310.
- Debit Card had the highest average purchase amount at $60.92.

### Seasonal Analysis
- Fall recorded the highest total purchase amount at $60,018.
- Fall also had the highest average purchase amount at $61.56.
- Spring had the highest customer count, with 999 records.

### Customer Satisfaction
- Footwear had the highest average review rating at 3.79.
- Clothing had the lowest category average rating at 3.72.
- 42.30% of non-missing review ratings were classified as positive using the project's rating segmentation.

### Subscription Analysis
- 1,053 customers had an active subscription.
- Subscription customers represented approximately 27% of the dataset.
- Average purchase amounts were similar between subscribed and non-subscribed customers.

## 7. Repository Structure

```text
customer-shopping-behavior-analysis/
│
├── README.md
│
├── customer_shopping_behavior_analysis.ipynb
│
├── customer_shopping_behavior_analysis.sql
│
├── data/
│   └── customer_shopping_behavior_cleaned.csv
│
├──├── python/
│   └── sql/
│   
└── dashboard/
│   └── Customer Shopping Behavior Dashboard.html
│
└── reports/
    └── Business_Report.pdf
```

## 8. Dataset Source and Acknowledgement

The dataset used in this project was obtained from the public GitHub repository by Amlan Mohanty:

**Original Repository:**  
[Customer Trends Data Analysis – SQL, Python & Power BI](https://github.com/amlanmohanty1/customer-trends-data-analysis-SQL-Python-PowerBI)

The dataset was independently analyzed and used for this portfolio implementation. The Python analysis, SQL queries, business insights, and dashboard presentation form part of this project work.

## 9. Important Data Limitations

- Each row represents a customer's latest recorded purchase, not a complete transaction history.
- Total purchase amount refers to the sum of recorded purchase amounts in this dataset. It should not be interpreted as lifetime customer spending or complete historical company revenue.
- Previous Purchases and Frequency of Purchases are customer attributes, not detailed transaction records.
- The 37 missing review ratings were excluded from rating-based calculations.
- Observed relationships are descriptive and do not establish cause and effect.

## 10. Project Outcomes

Through this project, I gained practical experience in:

- Data cleaning and preprocessing using Python.
- Exploratory Data Analysis and visualization.
- Feature engineering and customer segmentation.
- MySQL database handling.
- Writing business-oriented SQL queries.
- Using CTEs and window functions.
- Presenting analytical findings through an interactive HTML dashboard.
- Translating data analysis results into business insights.

## 11. Conclusion

This project demonstrates an end-to-end approach to customer shopping behavior analysis, combining Python, SQL, and dashboard presentation. It helped develop practical data analytics skills and an understanding of how customer data can support business analysis and decision-making.
