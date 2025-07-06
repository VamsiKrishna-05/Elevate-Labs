# Task 8: Stored Procedures and Functions

## Internship: SQL Developer

### Objective:
Understand how to modularize SQL logic using stored procedures and functions.

### Files Included:
- `task8_routines.sql`: Contains one stored procedure and one function definition.
- `README.md`: Documentation of task logic.

### Procedures and Functions:

1. **Stored Procedure - GetCustomerSpending(IN cust_id INT):**
   - Takes a customer ID as input.
   - Returns the total amount spent by that customer.

2. **Function - GetStockValue(prod_id INT):**
   - Takes a product ID as input.
   - Returns the stock value (price * quantity).

### SQL Concepts Demonstrated:
- `CREATE PROCEDURE` with IN parameter
- `CREATE FUNCTION` with RETURN value
- Scalar logic and aggregation within stored routines
- Example usage with `CALL` and `SELECT`

### Tools:
- MySQL Workbench (preferred for full procedure/function support)
- DB Browser for SQLite (limited stored routine support)

---

**Author:** Vamsi Krishna  
**Date:** June 2025