# Advanced SQL Queries – JOINs

This README documents the SQL JOIN queries written for the **ALX Airbnb Database Project**, specifically in the `database-adv-script` directory.

The purpose of these queries is to demonstrate how to retrieve data from multiple related tables using various SQL JOIN techniques.

---

## 1️⃣ INNER JOIN – Bookings with User Info

```sql
SELECT bookings.id AS booking_id, users.name AS user_name
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;
