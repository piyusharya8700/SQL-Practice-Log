# SQL Practice Log

A structured repository dedicated to documenting my hands-on learning journey, database design patterns, and relational query optimization using PostgreSQL.

## 📁 Repository Structure
*   `one_to_one.sql`: Implementing 1:1 relationship constraints using Primary and Foreign Keys to map users to unique documents (Passports).

## 🛠️ Tech Stack
*   **Database Management System:** PostgreSQL
*   **Interface Tool:** pgAdmin 4
---

## 🧠 Database Architecture: One-to-One Relationships
This section of the repository contains a hands-on implementation of a relational database schema using PostgreSQL to track users and their passport registries.

### Key Concepts Practiced:
* **Data Integrity Constraints:** Utilizing `UNIQUE` and `FOREIGN KEY` parameters to prevent data corruption and duplicate identity assignments.
* **Join Mechanics:** Comparing standard relational mapping via `INNER JOIN` against relational matrices using `CROSS JOIN`.

### 📊 Visual Script Reference
Below is the optimized, production-ready schema design for this phase:

![SQL Script][ONE-TO-ONE.png]

*The raw script tracking this implementation can be viewed directly in the **fixed data integrity** branch.*
