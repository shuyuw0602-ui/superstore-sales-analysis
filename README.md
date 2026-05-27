# Superstore Sales Analysis

## Project Overview
End-to-end data analysis project analyzing 9,994 orders from a US retailer (2014-2017), identifying profit loss causes and providing data-driven business recommendations.

## Key Findings
- Discount rate above 20% leads to negative profit margin across all categories
- Tables sub-category has the highest loss (-$17,725), mainly due to excessive discounting
- Champions customers (16%) contribute 28% of total revenue
- Technology category has the highest profit margin (12-21%)
- West + Standard Class has the longest shipping time (5.1 days)

## Business Recommendations
- Cap discount rate at 20% for all categories
- Prioritize retention of Champions and Loyal Customers (contribute 71% revenue)
- Investigate South region Same Day shipping losses
- Focus Technology category expansion in West region

## Tools & Methods
| Tool | Usage |
|------|-------|
| Excel | Data cleaning, pivot tables |
| SQL (Snowflake) | 6 business queries including CTE and window functions |
| Python / Pandas | RFM segmentation, discount analysis, visualization |
| Tableau | Interactive dashboard |

## Tableau Dashboard
[View Interactive Dashboard](https://public.tableau.com/app/profile/shuyu.wang8034/viz/SuperstoreSalesAnalysis_17798371260740/1?publish=yes)

## Project Structure

superstore-sales-analysis/
├── sql/          # 6 SQL queries
├── notebooks/    # Jupyter Notebook
├── charts/       # Output charts
└── outputs/      # Excel report and CSV files

## How to Run
```bash
pip install pandas matplotlib seaborn openpyxl
jupyter notebook notebooks/superstore_analysis.ipynb
```
