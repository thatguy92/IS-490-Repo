USE www;
INSERT INTO employee
(employee_id, first_name, last_name, nickname, mobile_phone, home_phone, availability_notes)
VALUES (8, 'Patrick L.', 'Patterson', 'Pat', '847-555-9706', NULL, 'All Saturdays and Sundays in June, July, and August');

USE www;
INSERT INTO can_guide
(employee_id, trip_type_code)
VALUES (8, 1);

USE www;
INSERT INTO can_guide
(employee_id, trip_type_code)
VALUES (8, 2);

USE www;
INSERT INTO can_guide
(employee_id, trip_type_code)
VALUES (8, 3);

USE www;
INSERT INTO plays_role
(employee_id, role_code)
VALUES (8,2);

USE www;
INSERT INTO plays_role
(employee_id, role_code)
VALUES (8,3);