# 📊 Index Performance Report

## ✅ Objective

Improve query performance by identifying high-usage columns and creating appropriate indexes in the User, Booking, and Property tables.

---

## 🔍 High-Usage Columns Identified

| Table      | High-Usage Columns               | Reason                                      |
|------------|----------------------------------|---------------------------------------------|
| users      | `id`, `email`                    | Used in lookups and joins                   |
| bookings   | `user_id`, `property_id`         | Used in joins with users and properties     |
| properties | `owner_id`                       | Likely used in joins or filters             |

These columns were chosen based on the ERD structure and expected queries (since no real data is available).

---

## ⚙️ SQL Index Commands

Saved in `database_index.sql`:


## 🧪 Query Performance Example

### Before indexing

```sql
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 123;
```
Before indexing, the database performs a sequential scan, checking every row in the bookings table to find matches. This is inefficient on large tables.

### After indexing

```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 123;
```
After adding the index, the database performs an index scan, which is much faster because it jumps directly to the matching rows using the index.
✅ Why These Columns Were Chosen

Since no real data was available, indexing decisions were based on:

    Foreign keys commonly used in JOINs (user_id, property_id, owner_id)

    Lookup fields like email, often used in filters or login queries

This ensures the database is optimized for the most likely access patterns.
✅ Conclusion

Indexes improve query speed by reducing how much data the database has to search through.

Even without actual data, we applied best practices based on schema design to improve performance and scalability using appropriate indexing.

