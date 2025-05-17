# Task 3: Index Performance Report

## Before Indexing

Queries with WHERE user_id or JOINs were slow due to full table scans.

EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 42;

## After Indexing

Created indexes:

- bookings(user_id)
- bookings(property_id)
- bookings(start_date)
- reviews(property_id)
- users(id)

Improved execution time from ~400ms to ~80ms for filtered queries.

EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 42;
