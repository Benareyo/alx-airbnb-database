-- 🔴 Unoptimized query: Booking details with user, property, and payment info
SELECT 
    bookings.id AS booking_id,
    users.name AS user_name,
    users.email,
    properties.name AS property_name,
    properties.location,
    payments.amount,
    payments.status
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.payment_id = payments.id
WHERE bookings.created_at >= '2024-01-01'
AND payments.status = 'completed';

-- 🔍 Analyze performance
EXPLAIN ANALYZE
SELECT 
    bookings.id AS booking_id,
    users.name AS user_name,
    users.email,
    properties.name AS property_name,
    properties.location,
    payments.amount,
    payments.status
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.payment_id = payments.id
WHERE bookings.created_at >= '2024-01-01'
AND payments.status = 'completed';

-- ✅ Optimized version: Select only essential fields
SELECT 
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id
WHERE b.created_at >= '2024-01-01'
AND pay.status = 'completed';
