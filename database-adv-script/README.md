# Advanced SQL Queries – JOINs

This README documents the SQL JOIN queries written for the **ALX Airbnb Database Project**, specifically in the `database-adv-script` directory.

The purpose of these queries is to demonstrate how to retrieve data from multiple related tables using various SQL JOIN techniques.

---

### ✅ INNER JOIN: Bookings and Users

```sql
-- INNER JOIN: Show all bookings with user details
SELECT bookings.id AS booking_id, users.name AS user_name
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

Explanation:
This query retrieves all bookings and the name of the user who made each booking.
It uses an INNER JOIN, which means it will only return records where a booking is linked to an existing user.
If a booking has no associated user (i.e., user_id is null or invalid), it won’t be shown.
✅ LEFT JOIN: Properties and Their Reviews

-- LEFT JOIN: Show all properties and their reviews (if any)
SELECT properties.id AS property_id, properties.title, reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

Explanation:
This query lists all properties and any reviews they might have.
It uses a LEFT JOIN, so all properties will be shown, even if there are no reviews linked to them.
If a property has no review, the comment column will appear as NULL.
✅ FULL OUTER JOIN: Users and Bookings

-- FULL OUTER JOIN: Show all users and all bookings, even if not linked
SELECT users.name AS user_name, bookings.id AS booking_id
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;

Explanation:
This query displays all users and all bookings — even when they are not linked to each other.
A FULL OUTER JOIN combines both LEFT JOIN and RIGHT JOIN, so:

    Users without bookings will still appear

    Bookings without users will also be shown
    If there's no match on either side, one of the columns will show NULL.
