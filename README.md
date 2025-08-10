# SQL for Data Analysis – E-Commerce Dataset

## 📌 Overview
This project is part of my **Data Analyst Internship** task.  
The goal was to perform SQL queries on a relational **e-commerce database** to extract meaningful insights and demonstrate the use of key SQL concepts.

---

## 📂 Dataset
The database consists of multiple related tables:
- **brands** – Brand details
- **categories** – Product categories
- **customers** – Customer details
- **order_items** – Products in each order
- **orders** – Order information
- **products** – Product details
- **staffs** – Staff members in stores
- **stocks** – Store stock availability
- **stores** – Store information

---

## 🛠 Tools Used
- **PostgreSQL** (via pgAdmin)
- SQL concepts: `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`, `JOIN`, `SUBQUERY`, `VIEWS`, `INDEX`
- Aggregate functions: `SUM`, `AVG`, `COUNT`, `MIN`, `MAX`

---

## 📊 Queries & Purpose

### **1–3. Basic Selection & Filtering**
- Retrieve products with price above 1000
- Find customers from California
- Get orders placed after `2018-01-01`

### **4–5. Sorting Results**
- Products sorted by price (descending)
- Customers ordered alphabetically by last name

### **6–8. Aggregations**
- Total revenue per store
- Orders processed by each staff member
- Average product price per category

### **9–11. Joins**
- Stores and their staff (LEFT JOIN)

### **12–14. Subqueries**
- Products more expensive than the average
- Store with highest revenue

### **15–16. Views**
- `order_summary` – order details with total value
- `product_total_sales_quantity` – product total quantity sold

### **17–18. Null Handling**
- Customers with no phone number

### **19–20. Indexing for Optimization**
- Index on customer last name

---

## 📸 Screenshots
All output screenshots are stored in the `screenshots/` folder.

---

## 📤 How to Run
1. Import the dataset into PostgreSQL.
2. Open `ecommerce_analysis.sql` in pgAdmin.
3. Execute queries to view results.

---
## 📅 Author
**Abhi Singh Yadav** – Data Analyst Intern in ElevateLabs
**Date** 08-08-2025
