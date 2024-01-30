
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
