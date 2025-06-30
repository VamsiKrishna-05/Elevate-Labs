# Task 5: SQL Joins (Inner, Left, Right, Full)

## Internship: SQL Developer

### Objective:
Demonstrate understanding of JOINs by combining data across multiple tables.

### Files Included:
- `task5_queries.sql`: SQL queries using INNER, LEFT, RIGHT, FULL, CROSS, and SELF joins
- `README.md`: This documentation

### Tables Used (Example Schema):
- Customers(customer_id, name, email, referrer_id)
- Orders(order_id, customer_id, product_id, quantity, order_date)
- Products(product_id, name, price)

### SQL Concepts Demonstrated:
- INNER JOIN: Matching rows between tables
- LEFT JOIN: All rows from the left, with matching from right
- RIGHT JOIN: All rows from the right, with matching from left
- FULL JOIN: Union of LEFT and RIGHT joins (via UNION if not supported)
- CROSS JOIN: Cartesian product
- SELF JOIN: Join within same table to show relationships (e.g., referrals)
- Multi-table joins with INNER JOINs

### Tools:
- DB Browser for SQLite (note: RIGHT/FULL JOIN simulated with UNION)
- MySQL Workbench or PostgreSQL for full JOIN support

---

**Author:** Vamsi Krishna  
**Date:** June 2025