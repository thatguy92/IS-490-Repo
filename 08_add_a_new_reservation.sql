USE www;
INSERT INTO guest
(guest_id, first_name, last_name, age, weight, isSwimmer, mobile_phone, experience_code)
VALUES (21, 'Lilly', 'Ludsen', 25, 120, 1, NULL, 4);

USE www;
INSERT INTO reservation
(trip_number, guest_id)
VALUES(562, 21)
