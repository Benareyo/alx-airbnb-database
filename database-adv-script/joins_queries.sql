-- 1. INNER JOIN: Get all bookings and the respective users who made those bookings
SELECT bookings.id AS booking_id, users.name AS user_name
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- 2. LEFT JOIN: Get all properties and their reviews, including properties with no reviews
SELECT properties.id AS property_id, properties.name AS property_name, reviews.rating
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id;

-- 3. FULL OUTER JOIN: Get all users and all bookings, even if there's no match
SELECT users.name AS user_name, bookings.id AS booking_id
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id
ORDER BY user_name NULLS LAST, booking_id NULLS LAST;


