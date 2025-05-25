-- Task 0: Complex SQL Joins for Airbnb Database

-- INNER JOIN: Bookings and their respective users
SELECT
    b.id AS booking_id,
    u.id AS user_id,
    u.name AS user_name,
    b.start_date,
    b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN: Properties and their reviews (include properties without reviews)
SELECT
    p.id AS property_id,
    p.name AS property_name,
    r.id AS review_id,
    r.rating,
    r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id
ORDER BY p.id;

-- FULL OUTER JOIN: Users and Bookings (MySQL workaround using UNION)
SELECT
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.start_date,
    b.end_date
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id

UNION

SELECT
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.start_date,
    b.end_date
FROM bookings b
LEFT JOIN users u ON b.user_id = u.id;
