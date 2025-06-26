# project_intern
# Retail Business Performance & Profitability Analysis

# Objective
Analyze transactional retail data to uncover:

* Profit-draining products and regions
* Optimize inventory turnover
* Identify seasonal and country-wise trends
* Deliver strategic insights via interactive dashboards

# Tools & Technologies Used
* SQL (MySQL Workbench): Data cleaning, revenue and profit calculations
* Python (Pandas, NumPy): Data preprocessing, inventory simulation
* Tableau Public: Data visualization and dashboard building

# Dataset
* Source: [Online Retail Dataset from UCI/Kaggle](https://archive.ics.uci.edu/ml/datasets/online+retail)
* File Used: `OnlineRetail_Cleaned.csv` (contains transactional data of UK-based online retail)

#  Project Workflow
1. Data Import & Cleaning (SQL)
* Imported CSV into MySQL using `LOAD DATA INFILE`
* Removed null/missing records and filtered valid invoices
* Calculated:
  * Total Revenue** = `Quantity * UnitPrice`
  * Estimated Profit** = `Revenue * 25%` (assumed margin)

2. Data Processing (Python)
* Simulated `InventoryDays` for scatter plot analysis
* Exported cleaned and enhanced data to Tableau-friendly format

3. **Data Visualization (Tableau)
Created multiple sheets:
* Monthly Profit Trend (Line Chart)
* Top 10 Products by Profit (Bar Chart)
* Profitability by Product (Scatter Plot)
* Revenue by Country (Heatmap) 
* Total Revenue & Profit by Country (Bar Chart)
All visualizations were combined into an **interactive Tableau dashboard**.

# Dashboard Preview
> Includes profit trends, top products, country performance & product-level profitability.

# Key Outcomes
* Identified high-return and high-profit products
* Highlighted top customer countries and sales months
* Delivered an interactive dashboard for stakeholders to explore insights visually
