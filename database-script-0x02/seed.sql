-- Insert Users
INSERT INTO users (name, email, password_hash)
VALUES 
('Alice', 'alice@example.com', 'hash1'),
('Bob', 'bob@example.com', 'hash2');

-- Insert Properties
INSERT INTO properties (owner_id, title, location, price_per_night)
VALUES 
(1, 'Cozy Cabin', 'Colorado', 120.00),
(2, 'Beachside Bungalow', 'California', 200.00);

-- Insert Bookings
INSERT INTO bookings (user_id, property_id, start_date, end_date, total_price)
VALUES 
(1, 2, '2024-07-01', '2024-07-05', 800.00);

-- Insert Payments
INSERT INTO payments (booking_id, amount, status, payment_date)
VALUES 
(1, 800.00, 'Completed', NOW());
