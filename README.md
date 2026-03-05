# Data Analyst Job Market Analysis

## Introduction
This project analyzes the **Data Analyst job market** using SQL by exploring job postings, salary trends, and required skills. The goal is to identify the most valuable skills for data analysts by examining salary distributions, job demand, and the relationship between skills and compensation.

The analysis focuses on answering key questions:

- What are the highest-paying data analyst jobs?
- Which skills are most frequently requested?
- Which skills command the highest salaries?
- What skills provide the best combination of demand and salary?

---

# Background

The demand for data analysts continues to grow as organizations increasingly rely on data-driven decision making. However, the **salary levels and required skillsets vary widely depending on the tools and technologies used.**

Understanding these trends helps:

- Job seekers prioritize the most valuable skills
- Professionals identify high-paying technologies
- Companies understand the evolving analytics landscape

This project explores job postings to uncover **real-world insights about the data analyst job market.**

---

# Tools Used

| Tool | Purpose |
|-----|------|
| SQL | Data analysis |
| PostgreSQL | Querying job datasets |
| GitHub | Version control and documentation |
| JSON/CSV | Query result datasets |

### Key SQL Concepts Used

- JOINs
- Common Table Expressions (CTEs)
- Aggregations (`COUNT`, `AVG`)
- Subqueries
- CASE statements
- Filtering conditions

---

# Dataset Overview

The dataset contains job postings along with associated skills and salary information. The main tables used include:

- **job_postings_fact** – contains job posting details
- **skills_job_dim** – maps jobs to required skills
- **skills_dim** – contains skill names
- **company_dim** – contains company information

These tables were joined to analyze relationships between **skills, job demand, and salaries.**

---

# Analysis

## 1️⃣ Top Paying Data Analyst Jobs

This analysis identifies the highest-paying data analyst roles.

### Key Findings

| Company | Job Title | Salary |
|------|------|------|
| Mantys | Data Analyst | $650,000 |
| Meta | Director of Analytics | $336,500 |
| AT&T | Associate Director – Data Insights | $255,829 |
| Pinterest | Data Analyst, Marketing | $232,423 |
| UCLA Health | Data Analyst (Hybrid/Remote) | $217,000 |

### Insights

- Leadership and senior analytics roles dominate the top salary range.
- Many high-paying roles are **remote or hybrid positions**.
- Advanced analytics leadership roles can exceed **$200k+ salaries**.

---

## 2️⃣ Most Demanded Skills

The most frequently requested skills in data analyst job postings:

| Skill | Demand Count |
|------|------|
| SQL | 92,628 |
| Excel | 67,031 |
| Python | 57,326 |
| Tableau | 46,554 |
| Power BI | 39,468 |
| R | 30,075 |
| SAS | 28,068 |

### Insights

- **SQL remains the most important skill for data analysts.**
- **Excel continues to be widely used in analytics workflows.**
- Visualization tools like **Tableau and Power BI are highly demanded.**

This indicates that **database querying + visualization tools are core analyst skills.**

---

## 3️⃣ Highest Paying Skills

Some specialized tools command significantly higher salaries.

| Skill | Avg Salary |
|------|------|
| SVN | $400,000 |
| Solidity | $179,000 |
| Couchbase | $160,515 |
| DataRobot | $155,486 |
| Golang | $155,000 |
| MXNet | $149,000 |
| Terraform | $146,734 |

### Insights

- Specialized tools related to **AI, machine learning, and infrastructure** command premium salaries.
- These tools appear less frequently but offer **very high compensation when required.**

---

## 4️⃣ Optimal Skills (High Demand + High Salary)

Optimal skills are those that combine **high demand and strong salary potential.**

| Skill | Demand Count | Avg Salary |
|------|------|------|
| SQL | 398 | $96,435 |
| Excel | 256 | $86,419 |
| Python | 236 | $101,512 |
| Tableau | 230 | $97,978 |
| R | 148 | $98,708 |
| Power BI | 110 | $92,324 |

### Insights

These skills offer the **best career return for aspiring data analysts.**

Key observations:

- **Python provides strong salary growth potential**
- **SQL is the foundational skill for analytics**
- Visualization tools like **Tableau and Power BI remain essential**
- Statistical tools like **R continue to be valuable**

---

# Key Learnings

Through this project I strengthened my ability to:

- Write complex SQL queries using **CTEs and subqueries**
- Perform **data aggregation and filtering**
- Combine datasets using **JOIN operations**
- Transform job market data into **actionable insights**
- Communicate results using **structured data storytelling**

---

# Key Takeaways

The data analyst job market reveals several important trends:

### SQL is the foundation skill
Nearly every data analyst role requires SQL.

### Python increases earning potential
Python enables advanced analytics, automation, and machine learning.

### Visualization tools are essential
Tableau and Power BI appear frequently in job postings.

### Cloud and big data skills are growing
Skills related to **Snowflake, AWS, and Azure** are increasingly valuable.

---

# Conclusion

This project demonstrates how SQL can be used to analyze real-world job market data and extract career insights.

The most valuable skill combination for aspiring data analysts is:

**SQL + Python + Visualization Tools (Tableau / Power BI)**

This combination provides the best balance between **job demand, salary potential, and long-term career growth.**