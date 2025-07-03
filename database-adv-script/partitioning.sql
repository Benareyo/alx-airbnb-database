-- Step 1: Create parent partitioned table
DROP TABLE IF EXISTS bookings CASCADE;

CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    payment_id INT
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions (yearly example)
CREATE TABLE bookings_2023 PARTITION OF bookings
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF bookings
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 3: Query performance before partitioning (hypothetical, if table was unpartitioned)
-- EXPLAIN ANALYZE SELECT * FROM bookings WHERE start_date BETWEEN '2024-03-01' AND '2024-03-31';

-- Step 4: Query performance after partitioning (this will only scan 2024 partition)
EXPLAIN ANALYZE SELECT * FROM bookings WHERE start_date BETWEEN '2024-03-01' AND '2024-03-31';
