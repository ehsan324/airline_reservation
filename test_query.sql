
-- Retrieve all information about passengers and their tickets
SELECT * FROM passenger p
JOIN ticket t ON p.id = t.p_id;


-- Get details of flights including departure and arrival information
SELECT t.id, t.froms, t.tos, t.flight_date, t.arrival_time, a.name AS airplane_name
FROM ticket t
JOIN airplane a ON t.airplane_id = a.id;


-- Find passengers who have made payments
SELECT p.first_name, p.last_name, t.id AS ticket_id, py.amount, py.time_pay, py.date_pay
FROM passenger p
JOIN ticket t ON p.id = t.p_id
JOIN payment py ON t.price = py.amount;


-- Retrieve the total number of seats available for each flight
SELECT t.id AS ticket_id, t.froms, t.tos, t.num_seat, a.name AS airplane_name
FROM ticket t
JOIN airplane a ON t.airplane_id = a.id;


-- Get information about passengers who have booked international flights
SELECT p.first_name, p.last_name, t.id AS ticket_id, t.froms, t.tos, t.flight_date
FROM passenger p
JOIN ticket t ON p.id = t.p_id
JOIN airport dep_airport ON t.froms = dep_airport.city
JOIN airport arr_airport ON t.tos = arr_airport.city
WHERE dep_airport.international = true OR arr_airport.international = true;


-- Retrieve the services available for each airplane
SELECT a.name AS airplane_name, s.serv1, s.serv2, s.serv3, s.serv4
FROM airplane a
JOIN service s ON a.service_id = s.id;


