# SQL Practice Log

A structured repository dedicated to documenting my hands-on learning journey, database design patterns, and relational query optimization using PostgreSQL.

## 📁 Repository Structure
* `one_to_one.sql`: Implementing 1:1 relationship constraints using Primary and Foreign Keys to map users to unique documents (Passports).
* `orders_data_cleaning.sql`: Exploring massive transaction datasets, detecting data anomalies, and applying conditional `CASE` updates for text standardization.

## 🛠️ Tech Stack
* **Database Management System:** PostgreSQL
* **Interface Tool:** pgAdmin 4

---

## 🧠 Database Architecture: One-to-One Relationships
This section of the repository contains a hands-on implementation of a relational database schema using PostgreSQL to track users and their passport registries.

### Key Concepts Practiced:
* **Data Integrity Constraints:** Utilizing `UNIQUE` and `FOREIGN KEY` parameters to prevent data corruption and duplicate identity assignments.
* **Join Mechanics:** Comparing standard relational mapping via `INNER JOIN` against relational matrices using `CROSS JOIN`.

### 📊 Visual Script Reference
Below is the optimized, production-ready schema design for this phase:

![SQL Script](images/ONE-TO-ONE.png)

*The raw script tracking this implementation can be viewed directly in the [one_to_one.sql](./one_to_one.sql) file.*

---

## Retail Sales & Operational Logistics Analysis

### 🎯 Business Objective
In this phase, I analyzed a massive retail order log containing over 185,000 transaction records to calculate gross corporate revenue and identify customer loyalty segments using PostgreSQL.

### 🧹 Data Cleaning & Anomaly Resolution
During initial data exploration, I discovered a text consistency issue where human data entry had split categories into duplicates (e.g., `'GOLD'` vs `'Gold'`, and `'PLATINUM'` vs `'Platinum'`). This anomaly would distort any financial reporting. 

To resolve this, I implemented an optimized data cleaning script utilizing a conditional `CASE` expression to permanently standardize the records across the entire database in a single transaction block.

### 🧠 Core Business Insights Discovered
* **Total Order Volume:** 185,013 individual transactions successfully processed.
* **Gross Corporate Revenue:** Generated a total financial footprint of ₹2,56,41,503.32 (2.56 Crores).
* **Data Integrity:** Standardized customer profiles down to three clean, actionable distinct tiers: Gold, Platinum, and Silver.

### 🖼️ Visual Script Reference
Below is the verified exploration and cleaning workflow implemented in pgAdmin:

![SQL Exploration and Cleaning](images/Order_data_cleaning.png)

*The raw script tracking this implementation can be viewed directly in the [orders_data_cleaning.sql](./orders_data_cleaning.sql) file.*
