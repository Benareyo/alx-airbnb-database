# Database Performance Monitoring Report

##  Objective

Continuously monitor and refine database performance by analyzing slow queries and making schema or indexing improvements.

---

##  Query 1: Lookup bookings by user_id

```sql
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 123;
```

###  Before Improvement:
The query scanned the entire `bookings` table (full table scan).  
This is inefficient because it checks every row without using an index.

###  Improvement:
```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
```

###  After:
The database used an index scan instead of a sequential scan, improving the performance significantly — especially as the table grows.

---

##  Query 2: Filter bookings by date range

```sql
EXPLAIN ANALYZE SELECT * FROM bookings WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
```

###  Before:
The query scanned the entire `bookings` table (full table scan).  
This caused performance issues with large datasets.

###  Improvement:
Partitioned the `bookings` table by year based on the `start_date`:

- `bookings_2023`
- `bookings_2024`
- `bookings_2025`

###  After:
Only the `bookings_2024` partition was scanned, reducing the search space and improving performance significantly.

---

##  Conclusion

By using `EXPLAIN ANALYZE`, we identified slow queries and improved them through:

- ✅ Indexing on `user_id`
- ✅ Partitioning on `start_date`

These changes reduced I/O, improved query speed, and made the database more scalable.

---

##  File Summary

- `performance_monitoring.md` — This report
- `bookings.user_id` — Indexed
- `bookings.start_date` — Partitioned by year
