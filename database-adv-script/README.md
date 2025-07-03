# JOIN Queries Explanation

This file contains three SQL queries demonstrating the use of different types of JOINs in a relational database.

---

### 1. INNER JOIN - Bookings with their Users

```sql
SELECT bookings.id AS booking_id, users.name AS user_name
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

SELECT properties.id AS property_id, properties.name AS property_name, reviews.rating
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;
