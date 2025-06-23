# 🛒 E-Commerce Store Database (MySQL)

This project is part of the **SQL Developer Internship Task 1**. It demonstrates the design, development, and structure of a **relational database** for an e-commerce platform using **MySQL** and **MySQL Workbench**.

---

## 📌 Project Overview

The goal of this project is to build a normalized and relational database schema that supports common e-commerce functionality, such as:

- User registration
- Product catalog
- Shopping cart
- Order placement
- Payments and shipping

This setup is scalable and designed to maintain **data integrity**, **avoid redundancy**, and support **future features** like reviews, product filters, and admin management.
---
## 🧩 Schema Overview

---

## 🧱 Database Tables

| Table Name     | Description                                |
|----------------|--------------------------------------------|
| `Users`        | Stores customer details                    |
| `Categories`   | Defines product categories                 |
| `Products`     | Lists products available for purchase      |
| `Orders`       | Holds general order information            |
| `OrderItems`   | Stores items within each order             |
| `Payments`     | Contains payment details per order         |
| `Addresses`    | Stores user shipping addresses             |
| `Cart`         | Temporary storage of items before checkout |


Each table uses **primary and foreign keys** to enforce relationships and maintain referential integrity.

---

## 🔗 Relationships

- One user → Many orders
- One order → Many order items
- Many products → One category
- One order → One payment
- One user → Many addresses
- One user → Many cart items

---

## 📷 ER Diagram

Export the diagram from MySQL Workbench:
- Go to `Database > Reverse Engineer`
- Select `ecommerce_db`
- Export as PNG or PDF
---
![Screenshot 2025-06-23 140915](https://github.com/user-attachments/assets/4a4b2e38-9962-4552-8f73-58d2ca9d0462)

---

## ✨ Author

**Vamsi Krishna**  
_SQL Developer Intern Candidate_
