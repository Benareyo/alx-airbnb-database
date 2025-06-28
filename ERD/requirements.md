# Airbnb ER Diagram Requirements

This folder contains the ER diagram files for the Airbnb database project.

## Entities and Attributes

1. **User**
   - user_id (PK)
   - first_name
   - last_name
   - email
   - password_hash
   - phone_number
   - role
   - created_at

2. **Property**
   - property_id (PK)
   - host_id (FK to User)
   - name
   - description
   - location
   - pricepernight
   - created_at
   - updated_at

3. **Booking**
   - booking_id (PK)
   - property_id (FK)
   - user_id (FK)
   - start_date
   - end_date
   - total_price
   - status
   - created_at

4. **Payment**
   - payment_id (PK)
   - booking_id (FK)
   - amount
   - payment_date
   - payment_method

5. **Review**
   - review_id (PK)
   - property_id (FK)
   - user_id (FK)
   - rating
   - comment
   - created_at

6. **Message**
   - message_id (PK)
   - sender_id (FK to User)
   - recipient_id (FK to User)
   - message_body
   - sent_at

## Relationships

- One User can make many Bookings.
- One Property can have many Bookings.
- One Booking has one Payment.
- One User can write many Reviews.
- One Property can have many Reviews.
- One User can send many Messages to other Users.

## Tool Used

This diagram was created using [Draw.io](https://draw.io) and saved in both `.drawio` and `.png` formats.
