# Finance KPI Dashboard

## Overview
This project is a **Finance KPI Dashboard** developed in **Power BI**, utilizing **SQL queries** for data extraction, transformation, and aggregation. It provides a comprehensive view of key financial metrics such as total revenue, revenue by region and department, client contributions, and month-on-month revenue growth. The dashboard is interactive, allowing users to apply filters for tailored analysis.

---

## Key Features

### 1. **Total Revenue and Total Hours**
- **What it shows**: Displays high-level metrics for total revenue and total hours billed during the selected period.
- **How it's built**: SQL queries were used to calculate total revenue and total hours from raw financial data.
- **Visualization**:
  ![Total Revenue and Hours](images/totalhours_revenue.jpg)

---

### 2. **Revenue Distribution by Region**
- **What it shows**: A bar chart and a pie chart visualizing revenue distribution across regions (Europe, Americas, APAC, EMEA).
- **How it's built**: SQL queries were used to group and sum revenue by region.
- **Visualization**:
  ![Revenue by Region](images/rev_byregion.jpg)

---

### 3. **Revenue by Department**
- **What it shows**: A horizontal bar chart highlighting the revenue contributions of departments such as Tax, Audit, Management, Advisory, and Legal.
- **How it's built**: SQL queries were used to group and sum revenue by department.
- **Visualization**:
  ![Revenue by Department](images/department.jpg)

---

### 4. **Month-on-Month Revenue Growth**
- **What it shows**: A line graph that tracks the percentage increase or decrease in revenue month-over-month.
- **How it's built**: SQL queries calculated the month-over-month percentage changes using lag functions for time-based data comparison.
- **Visualization**:
  ![Month-on-Month Revenue Growth](images/monthonmonth.jpg)

---

### 5. **Top Clients by Revenue**
- **What it shows**: A table listing the top clients and their respective revenue contributions.
- **How it's built**: SQL queries were used to aggregate client data and rank clients by total revenue.
- **Visualization**:
  ![Top Clients](images/revenue_total_client.jpg)

---

### 6. **Interactive Filters**
- **What it enables**:
  - Filter by **Region**: Select specific geographic areas such as Europe, Americas, APAC, or EMEA.
  - Filter by **Quarter**: Focus on specific quarters (Q1, Q2, Q3, Q4).
  - Filter by **Month**: Drill down into specific months for more detailed insights.
- **How it's built**: SQL queries dynamically filter data based on user selections.
- **Visualization**:
  ![Interactive Filters - Region, Quarter, and Month](images/quarter_month.jpg)

---

### Full Dashboard
- A consolidated view of all key metrics and visualizations in one interactive dashboard.
![Full Dashboard View](images/full_dashboard.jpg)

---

## Applications
- **Performance Tracking**: Monitor total revenue, departmental performance, and regional contributions.
- **Client Insights**: Identify and focus on high-revenue clients.
- **Trend Analysis**: Analyze month-on-month revenue growth to identify opportunities and challenges.
- **Interactive Reporting**: Enable users to apply filters and customize their analysis.

---

## Tools Used
This project utilized the following tools:
- **Power BI**: For data visualization and creating the interactive dashboard.
- **SQL**: For extracting, transforming, and aggregating data from raw datasets.
- **Excel**: For preprocessing and cleaning the raw data.

---

## Future Enhancements
- Add predictive analytics for revenue forecasting.
- Enable real-time data integration for up-to-date financial tracking.
- Include drill-through functionality for
