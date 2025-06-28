-- seed.sql
-- Sample data to populate Airbnb clone database

-- Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice@example.com', 'hashedpassword1', '123-456-7890', 'guest'),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Johnson', 'bob@example.com', 'hashedpassword2', '234-567-8901', 'host'),
  ('33333333-3333-3333-3333-333333333333', 'Carol', 'Williams', 'carol@example.com', 'hashedpassword3', '345-678-9012', 'admin');

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy Cottage', 'A small cozy cottage near the lake.', 'Lakeside', 75.00),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'Modern Apartment', 'A modern apartment in downtown.', 'City Center', 120.00);

-- Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('dddddddd-dddd-dddd-dddd-dddddddddddd', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-07-01', '2025-07-05', 300.00, 'confirmed'),
  ('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', '2025-08-10', '2025-08-15', 600.00, 'pending');

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('ffffffff-ffff-ffff-ffff-ffffffffffff', 'dddddddd-dddd-dddd-dddd-dddddddddddd', 300.00, 'credit_card'),
  ('99999999-9999-9999-9999-999999999999', 'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 0.00, 'paypal');

-- Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('12121212-1212-1212-1212-121212121212', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Lovely stay, very comfortable!'),
  ('34343434-3434-3434-3434-343434343434', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 4, 'Great location and clean rooms.');

-- Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('55555555-5555-5555-5555-555555555555', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi, I would like to book your property.'),
  ('66666666-6666-6666-6666-666666666666', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hello! Your booking is confirmed.');
