-- Index on bookings.user_id to speed up joins with users
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on bookings.property_id to speed up joins with properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on properties.owner_id to speed up joins or lookups on owner
CREATE INDEX idx_properties_owner_id ON properties(owner_id);

-- Index on users.email to speed up lookups by email
CREATE INDEX idx_users_email ON users(email);
-- Measure query performance BEFORE indexing (run this before indexes exist)
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 123;

-- Measure query performance AFTER indexing (run this after indexes exist)
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 123;


