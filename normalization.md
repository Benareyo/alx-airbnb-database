# Normalization for Airbnb Database Design

## First Normal Form (1NF)

All tables have atomic columns with indivisible values.  
There are no repeating groups or arrays in any table.

## Second Normal Form (2NF)

Every non-key attribute is fully functionally dependent on the whole primary key.  
Since all our primary keys are single-column UUIDs, 2NF is satisfied.

## Third Normal Form (3NF)

There are no transitive dependencies in any table.  
All non-key attributes depend only on the primary key.

For example:

- In the **User** table, attributes like email and phone_number depend directly on user_id.  
- In the **Booking** table, total_price depends on booking_id and not on other non-key columns like property_id or user_id separately.  
- Foreign keys are used to relate tables, preventing data duplication.

Thus, the schema avoids redundancy and update anomalies, ensuring data consistency and integrity.

---

This database design is normalized to the **Third Normal Form (3NF)** to provide an efficient and reliable structure.
