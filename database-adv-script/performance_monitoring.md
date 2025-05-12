# Task 6: Performance Monitoring Report

## Tools Used

- SHOW PROFILE
- EXPLAIN

## Identified Bottlenecks

- Full table scans on JOINs and date filters

## Changes Made

- Added indexes on user_id, property_id, start_date
- Implemented partitioning on bookings

## Results

- Query execution time reduced by over 60%
- Indexes and partitions used successfully
