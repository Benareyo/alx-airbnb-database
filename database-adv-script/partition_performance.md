#  Partitioning Performance Report

##  Objective

Improve query performance on the large `bookings` table by partitioning it based on the `start_date` column.

---

##  Implementation

- Used PostgreSQL **RANGE** partitioning by year on `start_date`.
- Created child tables:
  - `bookings_2023`
  - `bookings_2024`
  - `bookings_2025`

---

##  Performance Observation

**Before partitioning**:  
```sql
EXPLAIN ANALYZE SELECT * FROM bookings WHERE start_date BETWEEN '2024-03-01' AND '2024-03-31';
```
The query scanned the entire `bookings` table (full table scan).

**After partitioning**:  
Only the `bookings_2024` partition was scanned, reducing the search space and improving performance significantly.

---

## ✅ Conclusion

Partitioning helped isolate queries to only relevant child tables, which:
- Reduced I/O
- Improved query speed
- Scaled better with future data growth
