-- Task 1: Subqueries for Airbnb Database

-- Properties with average rating > 4.0 (non-correlated subquery)
SELECT *
FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

-- Users who made more than 3 bookings (correlated subquery)
SELECT *
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.id
) > 3;
