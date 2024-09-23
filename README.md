# Orderdata_analysis_using_sql
End-to-end Order data analysis project using Python and SQL to extract, clean, and analyze order data from Kaggle.

# **Project Overview**

**A brief description of this project**

This project involves data analysis of orders using Python to extract data from Kaggle via API, load it into **Jupyter Notebook**  for manipulation, and then into a **MS SQL server** for comprehensive analysis. This end-to-end process showcases a  **ETL (Extract, Transform, Load) project** aimed at deriving insights from order data to understand trends, improve decision-making, and optimize business strategies.


## **Problem Statement**

Retailers often face challenges in managing orders, understanding customer behavior, and predicting future trends. This project addresses these challenges by leveraging data analysis techniques to extract meaningful insights from order data. The goal is to analyze sales patterns, product performance, and regional differences to support business operations and strategy formulation.

## **Table of Contents**
1. Dataset
2. Data Extraction
3. Data Cleaning
4. Data Loading
5. Data Analysis
6. Libraries Used
7. Key Findings
8. Insights
9. Conclusion

### **Dataset**
The dataset used in this project includes the following features:

- Order ID
- Order Date
- Ship Mode
- Segment
- Country
- City
- State
- Postal Code
- Region
- Category
- Sub-category
- Product ID
- Quantity
- Discount
- Sale Price
- Profit

![image](https://github.com/MithilKothari/Orders-Data-Analysis-using-SQL-/assets/156261969/f3033b7a-8a8d-48bf-9f89-638e9f3933cc)

### **Data Extraction**
Data extraction steps performed include:

- Using the Kaggle API to download the dataset
- Loading the dataset into Jupyter Notebook for initial inspection

### **Data Cleaning**
Data cleaning steps performed in Python include:

- Handling missing values
- Removing duplicates
- Converting data types
- Standardizing categorical variables

### **Data Loading into SQL Server**
Data loading steps include:

- Storing the cleaned data into an SQL server
- Setting up the appropriate database schema
- Writing SQL queries to manipulate

### **Data Analysis**
During the data analysis, several analyses were conducted:

- Distribution analysis of orders over different categories and sub-categories
- Customer segmentation based on demographics and segments
- Time-series analysis of order trends by date and region
- Performance metrics of different product categories and sub-categories
- Analysis of shipping modes and their impact on sales and profit
- Regional analysis of sales and profit distribution

### **Libraries Used**

The following Python libraries were used in this project:

- Pandas
- SQLAlchemy
- Jupyter Notebook
- Zip file
- Kaggle

## **Project Architecture**

The following diagram illustrates the data flow for this project:

![image](https://github.com/MithilKothari/Orders-Data-Analysis-using-SQL-/assets/156261969/5b8924d1-9239-4192-9ae9-c4a8ee5ac46c)

** **Key Findings**

### **Key Findings**

1. Finding the top 10 highest revenue-generating products.
2. Finding the top 5 selling products in each region.
3. Query for finding each category that had the highest month of sales.
4. Finding month-over-month growth comparison for 2022 and 2023 sales.
5. Which sub categories had highest growth by profit in 2023 compare to 2022.

## SQL Queries 

1. Finding the top 10 highest revenue-generating products.

![image](https://github.com/MithilKothari/Orders-Data-Analysis-using-SQL-/assets/156261969/ef5ed962-63b9-4dc5-9a2c-1d9bcacacfb8)

2. Finding the top 5 selling products in each region.

![image](https://github.com/MithilKothari/Orders-Data-Analysis-using-SQL-/assets/156261969/ceba476b-fb07-44b5-b34b-aa248a5ab364)

3. Query for finding each category that had the highest month of sales.

![image](https://github.com/MithilKothari/Orders-Data-Analysis-using-SQL-/assets/156261969/8e40d9f4-0006-4346-811d-35a22602f354)

4. Finding month-over-month growth comparison for 2022 and 2023 sales.

![image](https://github.com/MithilKothari/Orders-Data-Analysis-using-SQL-/assets/156261969/84607407-25a7-49c4-b598-0fc48cd2cc87)

5. Which sub categories had highest growth by profit in 2023 compare to 2022.

![image](https://github.com/MithilKothari/Orders-Data-Analysis-using-SQL-/assets/156261969/96886db9-74fd-466a-b707-3b98afe32dc3)

