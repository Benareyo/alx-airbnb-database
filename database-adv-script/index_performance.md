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

```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_owner_id ON properties(owner_id);
CREATE INDEX idx_users_email ON users(email);

---

## 🧪 Query Performance Example

### Before indexing

```sql
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 123;

Before indexing, the database performs a sequential scan, checking every row in the bookings table to find matches. This is inefficient on large tables.

After indexing
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 123;
After adding the index, the database performs an index scan, which is much faster because it jumps directly to the matching rows using the index.


