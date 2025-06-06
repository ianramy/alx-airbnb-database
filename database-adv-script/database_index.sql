-- Task 3: Creating Indexes for Optimization

CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON bookings(property_id);
CREATE INDEX idx_start_date ON bookings(start_date);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
CREATE INDEX idx_users_id ON users(id);

-- AFTER indexing:
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 42;

-- AFTER indexing:
EXPLAIN SELECT u.name, b.start_date
FROM bookings b
JOIN users u ON b.user_id = u.id;

-- AFTER indexing:
EXPLAIN ANALYZE SELECT * FROM bookings WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';
