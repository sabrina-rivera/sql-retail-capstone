# SQL Capstone Project: Retail Sales Performance Analysis

## 📌 Business Task
Analyze retail sales data to identify top-performing products, customer segments, and regional trends in order to support data-driven business decisions for a retail consulting client.

Objective:
Provide actionable insights that help the client improve revenue, profitability, and strategic planning.
---

## 🏢 Scenario
I am a junior data analyst working for a business intelligence consulting firm. I was asked to lead an end-to-end analytics project for a new retail client, including defining the business problem, preparing data, conducting SQL analysis, and presenting insights to stakeholders.

---

## ❓ Key Questions
- Which products and categories generate the highest revenue?
- Which customer segments are most profitable?
- How do sales and profit vary by region?
- Are there identifiable sales trends over time?

---

## 📂 Data Source
**Dataset:** Sample-Superstore  
**Source:** Kaggle (public dataset) user Vivek Chowdhury 
**Format:** CSV  
**File Size:** ~1–2 MB  

### Data Description
- Contains order-level retail sales data
- Includes customer, product, and geographic information

### Data Limitations
-Public, fictional dataset commonly used for analytics training
-Meets ROCCC standards for learning purposes
-Single-table structure normalized into multiple tables for analysis
-Limited customer demographic detail beyond segmentation

---

## 🧰 Tools Used
- SQL (DB Browser for SQLite)
- GitHub
- Excel / Google Sheets (data inspection)
- PowerPoint / Google Slides (presentation)

---

## 🔄 Data Analysis Process
This project follows the **Ask → Prepare → Process → Analyze → Share → Act** framework.

---

## 🧹 Data Cleaning & Processing
- Removed duplicate orders
- Standardized date formats
- Converted numeric fields to appropriate data types
- Created normalized tables for customers, products, and orders

See: `/sql/02_cleaning.sql`

---

## 📊 Analysis Summary
Key analyses included:
- Revenue and profit by product category
- Customer segment performance
- Regional sales trends
- Monthly sales growth

See: `/sql/03_analysis.sql`

---

## 📈 Key Insights
- A small number of product categories drive the majority of revenue
- Corporate customers generate higher average order value
- Sales peak during specific months, indicating seasonality

---

## ✅ Recommendations
- Prioritize high-margin product categories
- Focus retention strategies on high-value customer segments
- Align inventory and promotions with seasonal trends

---

## 📁 Repository Structure
sql-retail-capstone/
├── data/
│ ├── raw/
│ └── cleaned/
├── sql/
├── visuals/
└── presentation/

---

## ▶️ How to Reproduce This Analysis
1. Download the dataset from Kaggle
2. Place the CSV in `data/raw/`
3. Run SQL scripts in order from the `/sql` folder

