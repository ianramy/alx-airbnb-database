CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password_hash TEXT
);

CREATE TABLE properties (
    id SERIAL PRIMARY KEY,
    owner_id INT REFERENCES users(id),
    title VARCHAR(255),
    location VARCHAR(255),
    price_per_night DECIMAL(10, 2)
);

CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    property_id INT REFERENCES properties(id),
    start_date DATE,
    end_date DATE,
    total_price DECIMAL(10, 2)
);

CREATE TABLE payments (
    id SERIAL PRIMARY KEY,
    booking_id INT REFERENCES bookings(id),
    amount DECIMAL(10, 2),
    status VARCHAR(50),
    payment_date TIMESTAMP
);
