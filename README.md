# Superstore Sales Analysis

## Project Overview
End-to-end data analysis project analyzing 9,994 orders from a US retailer (2014-2017), identifying profit loss causes and providing data-driven business recommendations.

**Tools:** Excel · SQL (Snowflake) · Python · Pandas · Tableau

## Tableau Dashboard
[View Interactive Dashboard](https://public.tableau.com/app/profile/shuyu.wang8034/viz/SuperstoreSalesAnalysis_17798371260740/1?publish=yes)

## Power BI Dashboard
![Power BI Dashboard](powerbi_dashboard.png)

## Dataset
- **Source:** Kaggle Superstore Sales Dataset
- **Period:** 2014-2017
- **Size:** 9,994 orders, 27 fields
- **Link:** https://www.kaggle.com/datasets/vivek468/superstore-dataset-final

## Key Findings
- Discount rate above 20% leads to negative profit margin across all categories
- Tables sub-category has the highest loss (-$17,725), mainly due to excessive discounting
- Furniture profit margin deteriorated from 3.47% (2014) to 1.40% (2017) despite growing sales
- Champions customers (16%) contribute 28% of total revenue; Loyal Customers (32%) contribute 43%
- South region Same Day shipping has negative profit margin (-8.4%), requires immediate investigation
- Strong seasonality: sales peak every September and November across all 4 years

## Business Recommendations
1. **Discount strategy:** Cap discount rate at 20% for all categories; immediately stop high discounting on Tables and Bookcases
2. **Product strategy:** Increase investment in Copiers, Phones, Accessories — highest and most stable profit margins
3. **Customer strategy:** Launch retention program for Champions and Loyal Customers (contribute 71% revenue combined); use targeted vouchers for At Risk customers (avg spend $2,160)
4. **Operations:** Investigate South + Same Day shipping losses; promote Second Class over Standard Class in West and Central regions

## SQL Queries
| File | Business Question |
|------|-------------------|
| 01_category_sales_trend.sql | Which category grows fastest year over year? |
| 02_product_profit.sql | Which products are most/least profitable? |
| 03_customer_rfm.sql | Who are the highest value customers? |
| 04_shipping_analysis.sql | How does shipping method affect profit by region? |
| 05_monthly_growth.sql | What are the monthly sales trends and MoM growth? |
| 06_discount_analysis.sql | How does discount rate impact profit margin? |

## Python Analysis
| Module | Method |
|--------|--------|
| Monthly Sales Trend | Dual-axis chart (Sales bar + Profit line) |
| Discount Analysis | Grouped bar chart by category and discount band |
| RFM Segmentation | qcut scoring → 4 segments (Champions / Loyal / At Risk / Lost) |
| Sub-Category Profit | Horizontal bar chart with diverging color |

## Tools & Methods
| Tool | Usage |
|------|-------|
| Excel | Data cleaning, 6 derived columns, 3 pivot tables |
| SQL (Snowflake) | 6 business queries including CTE and window functions (LAG) |
| Python / Pandas | RFM segmentation, discount analysis, automated Excel report |
| Tableau | Interactive dashboard with 4 charts |

## Project Structure
superstore-sales-analysis/
├── sql/                  # 6 SQL query files
├── notebooks/            # Jupyter Notebook with full analysis
├── charts/               # Output charts (PNG)
└── outputs/              # Excel report and RFM results (CSV)

## How to Run
```bash
pip install pandas matplotlib seaborn openpyxl
jupyter notebook notebooks/superstore_analysis.ipynb
```
