-- Task 5: MySQL Partitioning by RANGE (requires InnoDB and primary key)

-- Drop if exists
DROP TABLE IF EXISTS bookings_partitioned;

-- Create partitioned table
CREATE TABLE bookings_partitioned (
    id INT NOT NULL,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    PRIMARY KEY (id, start_date)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024)
);
