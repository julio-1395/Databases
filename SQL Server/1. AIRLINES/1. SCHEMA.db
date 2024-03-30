CREATE TABLE flights (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(10),
    departure_airport VARCHAR(50),
    arrival_airport VARCHAR(50),
    departure_time DATETIME,
    arrival_time DATETIME,
    aircraft_id INT,
    pilot_id INT,
    copilot_id INT,
    -- Add more columns as needed
    -- ...
);

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender CHAR(1),
    seat_number VARCHAR(10),
    flight_id INT,
    -- Add more columns as needed
    -- ...
);

CREATE TABLE aircrafts (
    aircraft_id INT PRIMARY KEY,
    aircraft_type VARCHAR(50),
    registration_number VARCHAR(20),
    total_seats INT,
    manufacturer VARCHAR(50),
    -- Add more columns as needed
    -- ...
);

CREATE TABLE crew (
    crew_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    flight_id INT,
    -- Add more columns as needed
    -- ...
);


