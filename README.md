# KULTRA-MEGA-STORES-SQL-ANALYSIS
SQL-based data analysis of Kultra Mega Stores inventory and customer orders from 2009–2012. Part of DSA Capstone Project.

## 🏢 Company Overview
Kultra Mega Stores (KMS) is a major provider of office supplies and furniture in Nigeria. This analysis focuses on its Abuja division using historical order data from 2009 to 2012. The aim is to generate insights to support strategic decision-making.

## 🎯 Objective
To perform SQL-based analysis on KMS data and answer specific business questions related to product performance, customer value, shipping efficiency, and returns.

## 📁 Dataset Description
The dataset contains order-level data with columns such as:
- Order ID
- Order Date
- Customer Name
- Segment (Consumer, Corporate, Small Business)
- Region
- Product Category
- Sales
- Profit
- Shipping Mode

## ✅ Analysis Questions & SQL Solutions
- **Most Valuable Customers** – Identified customers with highest total sales and their purchase preferences.
- **Top Small Business Customer** – Found the small business customer with the highest sales.
- **Top Corporate Customer by Orders** – Determined which corporate customer placed the most orders between 2009–2012.
- **Most Profitable Consumer Customer** – Highlighted the consumer with the highest profit contribution.
- **Returned Orders & Segments** – Identified customers who returned products and their associated segments.
- **Shipping Cost vs Order Priority** – Evaluated whether shipping costs align with order priorities and speed.

> All queries were written and executed in SQL using appropriate filtering, and grouping where necessary.

  ##  Insights & Interpretations

### 1. 🧾 Order Distribution by Segment and Region
- The **Consumer segment** placed the highest number of orders, especially from the **Abuja and North** regions.
- **Corporate clients**, though fewer in number, often placed **larger and more profitable orders**.
- The **Small Business** segment was the most price-sensitive, often choosing **economical shipping modes**.

### 2. Shipping Mode Efficiency
- **Regular Air** had the most balanced use across all priority levels, suggesting it’s seen as the default method.
- A number of **low-priority orders were shipped via Express Air**, which is inefficient and costly.
- **Delivery Truck** was underutilized even for low-priority orders, indicating missed cost-saving opportunities.

### 3.  Profitability by Product Category
- Some categories like **Office Machines** and **Chairs** generated high sales but **low profit margins** due to shipping or discounting.
- **Storage & Filing** had both decent sales and strong profits , a good candidate for promotion.
- **Appliances** had low sales in some regions despite decent profit margins ,suggesting a need for better distribution or marketing.

### 4.  Returned Items Patterns
- Most returns came from **Consumer customers**.
- The most returned items were in **Appliances** and **Office Supplies**  these may require better quality checks or clearer product descriptions.
- Some customers had multiple returns .They may require better post-sale engagement or review.

### 5.  Customer Segmentation Insight
-  Roughly 20% of customers accounted for 80% of total revenue.
- A **loyalty program** could be developed to retain and upsell high-value customers.

### 6. Order Priority vs Delivery Time 
- Orders marked "High" or "Critical" sometimes had longer delivery windows than expected — this gap could damage client trust or satisfaction.
- Suggest implementing **order SLA tracking** per priority level.

## Recommendation  
Based on the analysis, KMS did not consistently align its shipping choices with order priorities. While many high and critical priority orders were fulfilled using Express Air (the fastest method), a notable number of low priority orders were also shipped via Express Air, leading to unnecessarily high shipping costs.
Additionally, several critical orders were shipped using Delivery Truck, which, while economical, risks delaying urgent deliveries.
Recommendation: KMS should implement stricter logistics rules to ensure shipping modes match the urgency of each order. This will reduce costs and improve customer satisfaction


## 💾 Files Included
- `KMS_Case2_Solutions.sql` – All SQL queries used for analysis.
- `KMS_Data_Sample.csv` – Raw dataset used (cleaned version).

## 📌 Tools Used
- SQL (Microsoft SQL Server)
- Git & GitHub (for version control and portfolio)

##  Author Notes
This analysis was completed as part of the Data Analytics Capstone Project.  
If you'd like to collaborate or review the other case studies, feel free to connect!

