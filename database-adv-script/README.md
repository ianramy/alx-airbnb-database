# ALX Airbnb Database – Advanced SQL & Optimization

Welcome to the `database-adv-script` directory of the **ALX Airbnb Database Project**. This module showcases advanced SQL querying and optimization techniques to simulate real-world database challenges.

---

## Project Overview

This project is designed to:

- Master JOINs, subqueries, aggregations, and window functions.
- Apply indexing and partitioning strategies.
- Monitor and improve SQL performance using EXPLAIN and profiling.

---

## File Breakdown

### Task 0: Complex Queries with Joins

 `joins_queries.sql`

- `INNER JOIN`: Bookings with the users who made them.
- `LEFT JOIN`: Properties and their reviews, including unrated properties.
- `FULL OUTER JOIN` (via `UNION`): All users and all bookings, even unmatched ones.

 **Goal**: Learn to connect related data across multiple tables using JOINs.

---

### Task 1: Practice Subqueries

 `subqueries.sql`

- Properties with average ratings > 4.0 (non-correlated).
- Users with more than 3 bookings (correlated).

 **Goal**: Understand when and how to use subqueries for filtering and logic.

---

### Task 2: Aggregations and Window Functions

 `aggregations_and_window_functions.sql`

- Total bookings made by each user (`COUNT + GROUP BY`).
- Rank properties by number of bookings using `RANK()` and window functions.

 **Goal**: Apply SQL analytical tools for user and property insights.

---

### Task 3: Implement Indexes for Optimization

 `database_index.sql`  
 `index_performance.md`

- Indexed key fields: `user_id`, `property_id`, `start_date`, and review joins.
- Measured performance before/after using `EXPLAIN`.

 **Goal**: Speed up queries by reducing scan ranges using strategic indexes.

---

### Task 4: Optimize Complex Queries

 `perfomance.sql`  
 `optimization_report.md`

- Join bookings, users, properties, and payments.
- Refactored to reduce execution time using indexes.

 **Goal**: Minimize query complexity and maximize efficiency.

---

### Task 5: Partitioning Large Tables

 `partitioning.sql`  
 `partition_performance.md`

- Partitioned `bookings` table by year using `RANGE` on `start_date`.
- Tested and observed improvements in date-based queries.

 **Goal**: Use partitioning to scale with growing data volume.

---

### Task 6: Monitor and Refine Performance

 `performance_monitoring.md`

- Used `SHOW PROFILE` and `EXPLAIN` to detect slow queries.
- Made schema and index adjustments to address bottlenecks.

 **Goal**: Continuously assess and improve query performance in real-world scenarios.

---

## Technologies

- MySQL (for syntax and partitioning)
- SQL CLI / Workbench
- EXPLAIN / SHOW PROFILE for performance debugging

---
