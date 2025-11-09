# E-Commerce Sales Analysis - Int SQL

## Overview

Analysis of customer bevaior, retention, and lifetime value for an e-commerce company to imporve customer retention and maximize revenue.

## Business Questions

1. **Customer Segmentation Analysis**: Who are our most valuable customers?
2. **Cohort Analysis**: How do different customer groups generate revenue?
3. **Retention Analysis**: Which customers haven't purchased recently?

## Analysis Approach

### 1. Customer Segmentation Analysis

- Categorized customers based on total lifetime value (LTV)
- Assigned customers to High, Mid, and Low-value
- Calculated key metrics: total revenue

🖥️ Query: [1_customer_segmentation.sql](/1_customer_segmentation.sql)

**📉 Visualization:**

![LTV Segmentation](/images/ltv_segmentation.jpg)

📊 **Key Findings:**

- High-value segment (25% of customers) drives 66% of revenue ($135.4M)
- Mid-value segment (50% of customers) generates 32% of revenue ($65.6%)
- Low-value segment (25% of customers) accounts for 2% of revenue ($4.3M)

💡 **Business Insighst**

- High-Value (66% revenue): Offer premium membership program to 12,372 VIP customers, as losing one customer significantly impacts revenue
- Mid-Value (32% revenue): CReate upgrade paths through personalized promotions, with potential $66.6M ➡️ $135.4M revenue opportunity
- Low-Value (2% revenue): Design re-engagement campaigns and price-sensitive promotions to increase purchase frequency

### 2. Cohort Analysis

- Tracked revenue and customer count per cohorts
- Cohorts were grouped by year of first purchase
- Analyzed customer retention at a cohort level

🖥️ Query: [2_cohort_analysis.sql](/2_cohort_analysis.sql)

**📉 Visualization:**
![Cohort Analysis](/images/cohort_analysis.jpg)

📊 **Key Findings:**

- Revenue per customer shows an alarming decreasing trend overtime
  - 2022-2024 cohorts are consistently performing worse than earlier cohorts
  - NOTE: Although net revenue is increasing, this is likely due to a larger customer base, which is not reflective of customer value

💡 **Business Insighst**

- Value extracted from the customers is decreasing over time and needs further investigation.
- In 2023 we saw a drop in number of customers acquired, which is concerning.
- With both lowering LTV and decreasing customer acquisition, the company is faciang a protential revenue decline.

### 3. Customer Retention

- Identified customers at risk of churning
- Analyzed last purchase patterns
- Calculated customer-specific metrics

🖥️ Query: [3_retention_analysis.sql](/3_retention_analysis.sql)

**📉 Visualization:**

![Percentage of Active and Churn Customer](/images/retention_analysis_active_churned.jpg)

![Customer Churn by Cohort Year](/images/retention_analysis_active_churned_cohort_year.jpg)

📊 **Key Findings:**

- Cohort churn stabilizes a t ~90% after 2-3 years, indicating a predictable long-term retention pattern.
- Retention rates are consistently low (8-10%) across all cohorts, suggesting retention issues are systematic rather than specific to certain years.
  Newest cohorts (2022-2023) show similar churn trajectoties, signaling that without intervention, future cohorts will follow the same pattern.

💡 **Business Insighst**

- Strengthen early engagement strategies to target the first 1-2 years with onboarding incentives, loyalty rewards, and personalized offers to improve long -term retention.
- Re-en-gage high-value churned customers by focusing on targeted win-back campaigns rather than broad retention efforts, as reactivating valuable users may yield higher ROI.
- Predict & preempt churn risk and use customer-specific warning indicators to proactively intervene with at-risk users before they lapse.

## Startegic Recommendations

1. **Customer Value Optimization** (Customer Segmentation)

- Launch VIP programs for 12,372 high-value customers (66% revenue)
- CReate personalized upgrade paths for mid-value segment ($66.6M -> $135.4M opportunity)
- Design price-sensitive promotions for low-value segment to increase purchase frequency

2. **Cohort Performance Strategy** (Customer Revenue by Cohort)

- Target 2022-2024 cohorts with personalized re-engagement offers
- Implement loyalty/subscription programs to stabilize revenue fluctuatuins
- Apply successful strategies from high-spending 2016-2018 cohorts to newer customers

3. **Retention & Churn Prevention** (Customer Retention)

- Strengthen first 1-2 years engagement with onboarding incentives and loyalty rewards
- Focus on targeted win-back campaigns for high-value churned customers
- Implement proactive intervention system for at-risk customers before they lapse

## Technical Details

- **Database:** PostgreSQL
- **Analysis Tool:** PostgreSQL, Dbeaver, PGadmin
- **ETL:** PostgreSQL, Power Query
- **Visualization:** Tableau, Excel, Pivot Chart
