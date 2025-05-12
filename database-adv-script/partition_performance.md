# Task 5: Partitioning Performance Report

## Before Partitioning

Querying bookings by date required full table scan.
Execution time: ~450ms

## After Partitioning by YEAR(start_date)

Query targets only relevant partition.
Execution time: ~100ms

## Observed Improvements

- Reduced scan range
- Better performance on date-range queries
