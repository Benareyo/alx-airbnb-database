# Index Performance Report

## 1. Query before indexing

```sql
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 123;
