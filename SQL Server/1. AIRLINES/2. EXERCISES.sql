# 01º EXERCISES:
# DESCRIPTION: Retrieve all flights departing from a specific airport within a given date range.
# QUERY:

SELECT * FROM flights 
WHERE departure_airport = 'Airport_Name' 
AND departure_time BETWEEN 'start_date' AND 'end_date';

---------------------------------------------------------------------------------------------------

# 02º EXERCISES:
# DESCRIPTION: Get the total number of passengers on each flight.
# QUERY:

SELECT f.flight_id, COUNT(p.passenger_id) AS total_passengers 
FROM flights f 
LEFT JOIN passengers p ON f.flight_id = p.flight_id 
GROUP BY f.flight_id;

---------------------------------------------------------------------------------------------------

# 03º EXERCISES:
# DESCRIPTION: Find the average age of passengers on each flight.
# QUERY:

SELECT f.flight_id, AVG(p.age) AS average_age 
FROM flights f 
LEFT JOIN passengers p ON f.flight_id = p.flight_id 
GROUP BY f.flight_id;

---------------------------------------------------------------------------------------------------

# 04º EXERCISES:
# DESCRIPTION: Retrieve the names of all pilots and copilots for a specific flight.
# QUERY:

SELECT f.flight_id, c1.name AS pilot_name, c2.name AS copilot_name 
FROM flights f 
JOIN crew c1 ON f.pilot_id = c1.crew_id 
JOIN crew c2 ON f.copilot_id = c2.crew_id 
WHERE f.flight_id = 'specific_flight_id';

---------------------------------------------------------------------------------------------------

# 05º EXERCISES:
# DESCRIPTION: Find all flights where the departure time is later than the arrival time.
# QUERY:

SELECT * FROM flights 
WHERE departure_time > arrival_time;

---------------------------------------------------------------------------------------------------

# 06º EXERCISES:
# DESCRIPTION: Retrieve the registration numbers of all aircraft of a certain type.
# QUERY:

SELECT registration_number 
FROM aircrafts 
WHERE aircraft_type = 'desired_aircraft_type';

---------------------------------------------------------------------------------------------------

# 07º EXERCISES:
# DESCRIPTION: Find all passengers with the same name on different flights.
# QUERY:

SELECT name, COUNT(passenger_id) AS occurrences 
FROM passengers 
GROUP BY name 
HAVING COUNT(passenger_id) > 1;

---------------------------------------------------------------------------------------------------

# 08º EXERCISES:
# DESCRIPTION: Get the number of male and female passengers on each flight.
# QUERY:

SELECT f.flight_id, 
       SUM(CASE WHEN p.gender = 'M' THEN 1 ELSE 0 END) AS male_passengers,
       SUM(CASE WHEN p.gender = 'F' THEN 1 ELSE 0 END) AS female_passengers
FROM flights f
LEFT JOIN passengers p ON f.flight_id = p.flight_id
GROUP BY f.flight_id;

---------------------------------------------------------------------------------------------------

# 09º EXERCISES:
# DESCRIPTION: Retrieve the positions of crew members on a specific flight.
# QUERY:

SELECT name, position 
FROM crew 
WHERE flight_id = 'specific_flight_id';

---------------------------------------------------------------------------------------------------

# 10º EXERCISES:
# DESCRIPTION: Find all flights where a specific crew member is working.
# QUERY:

SELECT * 
FROM flights 
WHERE pilot_id = 'crew_member_id' OR copilot_id = 'crew_member_id';

---------------------------------------------------------------------------------------------------

# 11º EXERCISES:
# DESCRIPTION: Retrieve the names of passengers with special meal preferences.
# QUERY:

SELECT name 
FROM passengers 
WHERE meal_preference IS NOT NULL;

---------------------------------------------------------------------------------------------------

# 12º EXERCISES:
# DESCRIPTION: Get the total number of flights each pilot has operated.
# QUERY:

SELECT pilot_id, COUNT(flight_id) AS total_flights 
FROM flights 
GROUP BY pilot_id;

---------------------------------------------------------------------------------------------------

# 13º EXERCISES:
# DESCRIPTION: Find the busiest airport in terms of the number of departing flights.
# QUERY:

SELECT departure_airport, COUNT(flight_id) AS departing_flights 
FROM flights 
GROUP BY departure_airport 
ORDER BY departing_flights DESC 
LIMIT 1;
---------------------------------------------------------------------------------------------------

# 14º EXERCISES:
# DESCRIPTION: Retrieve the total number of seats available on each flight.
# QUERY:

SELECT f.flight_id, a.total_seats 
FROM flights f 
JOIN aircrafts a ON f.aircraft_id = a.aircraft_id;

---------------------------------------------------------------------------------------------------

# 15º EXERCISES:
# DESCRIPTION: Find all flights with no available seats.
# QUERY:

SELECT * 
FROM flights 
WHERE flight_id NOT IN (
    SELECT flight_id 
    FROM passengers
);

---------------------------------------------------------------------------------------------------

# 16º EXERCISES:
# DESCRIPTION: Retrieve the names of passengers who have flown more than once.
# QUERY:

SELECT name 
FROM passengers 
GROUP BY name 
HAVING COUNT(flight_id) > 1;

---------------------------------------------------------------------------------------------------

# 17º EXERCISES:
# DESCRIPTION: Find all flights where the aircraft has more than a certain number of seats.
# QUERY:

SELECT * 
FROM flights 
JOIN aircrafts ON flights.aircraft_id = aircrafts.aircraft_id 
WHERE aircrafts.total_seats > 'certain_number';

---------------------------------------------------------------------------------------------------

# 18º EXERCISES:
# DESCRIPTION: Retrieve the names of all passengers who are also crew members.
# QUERY:

SELECT p.name 
FROM passengers p 
JOIN crew c ON p.name = c.name;

---------------------------------------------------------------------------------------------------

# 19º EXERCISES:
# DESCRIPTION: Get the number of flights each passenger has taken.
# QUERY:

SELECT name, COUNT(flight_id) AS total_flights 
FROM passengers 
GROUP BY name;

---------------------------------------------------------------------------------------------------

# 20º EXERCISES:
# DESCRIPTION: Find all flights where the pilot is also a passenger.
# QUERY:

SELECT * FROM flights 
WHERE departure_airport = 'Airport_Name' 
AND departure_time BETWEEN 'start_date' AND 'end_date';

---------------------------------------------------------------------------------------------------