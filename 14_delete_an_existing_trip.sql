USE www;
DELETE FROM reservation
WHERE trip_number = 576;

USE www;
DELETE FROM trip 
WHERE
    trip_number = 576;