CREATE TABLE ticket (
	id serial primary key not null,
	p_id bigint unique references passenger(id) not null,
	pname varchar(25),
	froms varchar(15) not null,
	tos varchar(15) not null,
	flight_date date not null,
	arrival_time timestamp,
	num_seat int not null,
	airplane_id bigint references airplane(id) not null,
	price bigint unique not null
);


CREATE TABLE passenger (
	id serial primary key not null,
	first_name varchar(25) not null,
	last_name varchar(25),
	username varchar(25) not null,
	password varchar(25) not null,
	email varchar(50) not null,
	address text,
	phone bigint
);

CREATE TABLE airplane (
	id serial primary key not null,
	name varchar(15),
	seat int not null,
	is_type varchar(15),
	company varchar(15) not null,
	service_id smallint references service(id) not null
);

CREATE TABLE service (
	id smallint primary key not null,
	serv1 varchar(10) not null,
	serv2 varchar(10),
	serv3 varchar(10),
	serv4 varchar(10)
);

CREATE TABLE airport (
	id serial primary key not null,
	city varchar(15) not null,
	num_band smallint,
	international boolean not null,
	parking boolean
);

CREATE TABLE payment(
	id bigint primary key not null,
	amount bigint references ticket(price) unique not null,
	mode_of_pay boolean not null,
	time_pay timestamp not null,
	date_pay date not null
);





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


