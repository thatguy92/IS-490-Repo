USE www;
DELETE FROM reservation
WHERE guest_id = 11 AND trip_number = 562;

USE www;
INSERT INTO reservation
(trip_number, guest_id)
VALUES(564, 11)