-- Task 4: Query before and after optimization

-- Original Query
SELECT
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount,
    b.start_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id;

-- Optimized Query
SELECT
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount,
    b.start_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id
WHERE b.start_date >= '2024-01-01'
  AND u.id IS NOT NULL
ORDER BY b.start_date DESC;

-- EXPLAIN the optimized query to analyze performance
EXPLAIN
SELECT
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount,
    b.start_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id
WHERE b.start_date >= '2024-01-01'
  AND u.id IS NOT NULL
ORDER BY b.start_date DESC;