-- Task 3: Creating Indexes for Optimization

CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON bookings(property_id);
CREATE INDEX idx_start_date ON bookings(start_date);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
CREATE INDEX idx_users_id ON users(id);
