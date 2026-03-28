# 📊 Energy Market Price Analysis Dashboard

This repository contains my internship assignment work focused on **data cleaning, exploratory data analysis (EDA), SQL-based analysis, and interactive dashboard development** using real-world energy market data.

---

## 🚀 Project Overview

The objective of this project is to analyze global energy price trends and extract meaningful insights through a complete data workflow:

- Data preprocessing and cleaning  
- Statistical analysis using Python and SQL  
- Visualization through an interactive Power BI dashboard  

---

## 🧰 Tech Stack

- Python (Pandas, NumPy)
- PostgreSQL
- Power BI
- Excel

---

## 🧹 Data Cleaning

- Handled missing values using:
  - Forward fill / backward fill (categorical/time continuity)
  - Linear interpolation (time-series numerical data)
- Converted Date column to proper datetime format
- Ensured data consistency and removed anomalies
- Prepared dataset for accurate analysis and visualization

---

## 📊 Exploratory Data Analysis (EDA)

### 🔹 Measures of Central Tendency
- Mean  
- Median  
- Mode  

### 🔹 Measures of Dispersion
- Variance  
- Standard Deviation  
- Range  

### 🔹 Distribution Analysis
- Skewness  
- Kurtosis  

These statistical measures were computed using both **Python (Pandas)** and **PostgreSQL (SQL)** to validate results and understand data behavior.

---

## 🗄️ SQL Analysis

Statistical computations were performed using PostgreSQL:

- `AVG()` → Mean  
- `PERCENTILE_CONT()` → Median  
- `MODE()` → Mode  
- `VAR_POP()` → Variance  
- `STDDEV_POP()` → Standard Deviation  
- `MAX() - MIN()` → Range  
- Custom SQL logic → Skewness & Kurtosis  

This helped in strengthening analytical skills and understanding database-level computations.

---

## 📈 Power BI Dashboard

An interactive dashboard was developed with the following features:

- 📌 Dynamic column selection using Field Parameters  
- 📉 Trend analysis with line charts  
- 📊 Distribution visualization (histogram)  
- 📊 KPI Cards:
  - Average  
  - Median  
  - Variance  
  - Standard Deviation  
  - Minimum & Maximum  
  - Skewness & Kurtosis  
- 🎛️ User interaction via slicers  

---

## 🎯 Key Insights

- Energy prices exhibit different levels of volatility across sources  
- Natural gas and LNG show higher fluctuations  
- Oil prices demonstrate moderate trends over time  
- Distribution analysis reveals skewness and presence of outliers  

---

## 🧠 Learnings

- Handling missing values in time-series data  
- Implementing statistical measures in Python and SQL  
- Writing advanced SQL queries for analytical computations  
- Building dynamic and interactive dashboards in Power BI  
- Understanding real-world data analysis workflow  

---

## 📬 Contact

**Mahir Sama**  
Feel free to connect for feedback or collaboration.

---

## ⭐ Acknowledgement

This project was completed as part of my internship assignment to demonstrate practical skills in data analysis, SQL, and data visualization.
