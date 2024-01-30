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



-- import some data for service table
INSERT INTO service (id, serv1, serv2, serv3, serv4) values (1,'ventilation', 'food', 'television', 'electric chair');
INSERT INTO service (id, serv1, serv2 ) values (2,'ventilation', 'food');
INSERT INTO service (id, serv1, serv2) values (3, 'ventilation', 'electric chair');
INSERT INTO service (id, serv1, serv2, serv3) values (4, 'ventilation', 'food', 'television');
INSERT INTO service (id, serv1, serv2, serv3) values (5, 'ventilation', 'television', 'electric chair');

-- import some data for airplane table
INSERT INTO airplane (name, seat, is_type, company, service_id) values ('Airbus A220', 100, 'high-class', 'maham-air', 3);
INSERT INTO airplane (name, seat, is_type, company, service_id) values ('Airbus A300', 100, 'high-class', 'iran-air', 1);
INSERT INTO airplane (name, seat, is_type, company, service_id) values ('Airbus A310', 150, 'high-class', 'mahan-air', 3);
INSERT INTO airplane (name, seat, is_type, company, service_id) values ('Airbus A320 family', 200, 'high-class', 'meraj', 4);
INSERT INTO airplane (name, seat, is_type, company, service_id) values ('Airbus A330', 75, 'high-class', 'ata', 2);
INSERT INTO airplane (name, seat, is_type, company, service_id) values ('Airbus A340', 120, 'high-class', 'mahan-air',1);
INSERT INTO airplane (name, seat, is_type, company, service_id) values ('Airbus A380', 150, 'high-class', 'saha', 5);
INSERT INTO airplane (name, seat, is_type, company, service_id) values ('Airbus A380 family', 200, 'high-class', 'kish-air', 1);
INSERT INTO airplane (name, seat, is_type, company, service_id) values ('Airbus A420',75, 'high-class', 'aseman', 4);
INSERT INTO airplane (name, seat, is_type, company, service_id) values (' Airbus Defence and Space aircraft', 120, 'high-class', 'kish-air', 3);

-- import some data for airport table
INSERT INTO airport (city, num_band, international, parking) values ('tehran', 6, true, true);
INSERT INTO airport (city, num_band, international, parking) values ('tehran', 4, true, true);
INSERT INTO airport (city, num_band, international, parking) values ('mashhad', 4, true, true);
INSERT INTO airport (city, num_band, international, parking) values ('esfehan', 3, true, false);
INSERT INTO airport (city, num_band, international, parking) values ('tabriz',null, false, true);

-- import some data for payment table
INSERT INTO payment (id, amount, mode_of_pay, time_pay, date_pay) values (1, 1350000, true, '14:30:00', '2023-04-01');
INSERT INTO payment (amount, mode_of_pay, time_pay, date_pay) values (2340000, true, '01:30', '2023-02-03');
INSERT INTO payment (amount, mode_of_pay, time_pay, date_pay) values (7150000, true, '02:30', '2023-04-16');
INSERT INTO payment (amount, mode_of_pay, time_pay, date_pay) values (2350000, true, '14:53', '2023-02-17');
INSERT INTO payment (amount, mode_of_pay, time_pay, date_pay) values (1350000, true, '22:59', '2023-01-01');
INSERT INTO payment (amount, mode_of_pay, time_pay, date_pay) values (1000000, true, '17:41', '2023-09-31');
INSERT INTO payment (amount, mode_of_pay, time_pay, date_pay) values (1750000, true, '14:23', '2023-11-24');
INSERT INTO payment (amount, mode_of_pay, time_pay, date_pay) values (2430000, false, '23:00', '2023-01-18');

-- import some data for passenger table
INSERT INTO passenger (first_name, last_name, username, password, email, address, phone) values ('ali', 'seyedi', 'sed_ali', 'sed123', 'ali@gmail.com', null, 09124681954);
INSERT INTO passenger (first_name, last_name, username, password, email, address, phone) values ('sara', null, 'sara33', 'sara123', 'sara@gmail.com', 'mashhad blv sajjad', 09154686914);
INSERT INTO passenger (first_name, last_name, username, password, email, address, phone) values ('kiana', 'ahmadi', 'kingi', 'kiana123', 'kiana@gmail.com', 'mashhad blv hashemieh', 09396597461);
INSERT INTO passenger (first_name, last_name, username, password, email, address, phone) values ('sepehr', 'salami', 'moonstar', 'pepehr123', 'sepehr@gmail.com', null, 09125431697);
INSERT INTO passenger (first_name, last_name, username, password, email, address, phone) values ('hossein', 'arasteh', 'ho3ein', 'hossion123', 'hossein@gmail.com', 'tehran, aghdasieh', 09393265914);
INSERT INTO passenger (first_name, last_name, username, password, email, address, phone) values ('melika', 'malekan', 'melijoon', 'melika123', 'melika@gmail.com', null, 09194751325);
INSERT INTO passenger (first_name, last_name, username, password, email, address, phone) values ('baran', null, 'gameram', 'gamer123', 'gameres@gmail.com', 'tehran, tajrish', 09145816493);
INSERT INTO passenger (first_name, last_name, username, password, email, address, phone) values ('hasti', 'ghanouni', 'lawer', 'hasti123', 'hasti@gmail.com', null, 09154622251);


-- import some data for ticket
INSERT INTO ticket (p_id, pname, froms, tos, flight_date, arrival_time, num_seat, airplane_id, price) values (6, 'hossein', 'esfehan', 'tehran', '2023-2-23', '17:40', 17, 19 ,2350000);
INSERT INTO ticket (p_id, pname, froms, tos, flight_date, arrival_time, num_seat, airplane_id, price) values (9, 'hasti', 'tehran', 'mashhad', '2023-04-11', '01:15', 20, 14 ,1000000);
INSERT INTO ticket (p_id, pname, froms, tos, flight_date, arrival_time, num_seat, airplane_id, price) values (4, 'kiana', 'esfehan', 'mashhad', '2023-11-26', '23:00', 33, 15 ,3000000);
INSERT INTO ticket (p_id, pname, froms, tos, flight_date, arrival_time, num_seat, airplane_id, price) values (3, 'sara', 'tehran', 'tabriz', '2023-07-02', '14:30', 7, 17 ,7350000);
INSERT INTO ticket (p_id, pname, froms, tos, flight_date, arrival_time, num_seat, airplane_id, price) values (7, 'melika', 'qom', 'tehran', '2024-01-15', '14:45', 1, 13 ,4250000);



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


