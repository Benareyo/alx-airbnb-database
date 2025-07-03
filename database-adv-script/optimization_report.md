# 🛠️ Query Optimization Report

## 🎯 Objective

Improve performance of a complex SQL query joining bookings, users, properties, and payments.

---

## 🔍 Initial Query

The original query retrieves booking details and joins:

- `bookings` table
- `users` for user info
- `properties` for property info
- `payments` for payment info

---

## ⚙️ Performance Analysis

We used `EXPLAIN ANALYZE` to evaluate performance.

Identified issues:
- Full table scans (before indexes)
- Some columns fetched unnecessarily

---

## 🚀 Optimized Query Strategy

- Indexed: `bookings.user_id`, `bookings.property_id`, `bookings.payment_id`
- Selected only required columns to reduce data transfer
- Used table aliases for clarity

---

## ✅ Result

Reduced query complexity and execution time, especially with large datasets.

---

## 📁 Files Submitted

- `perfomance.sql`: SQL queries (initial, analysis, and optimized)
- `optimization_report.md`: This explanation report
