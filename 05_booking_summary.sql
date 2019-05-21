USE www;

SELECT 
    destination_name,
    trip_type_name,
    trip.trip_number,
    trip_date,
    CONCAT(first_name, ' ', last_name) AS 'guide name',
    capacity,
    COUNT(reservation.guest_id) AS 'guests booked',
    (capacity - COUNT(reservation.guest_id)) AS 'positions available'
FROM
    destination
        JOIN
    trip ON destination.destination_code = trip.destination_code
        JOIN
    trip_type ON trip.trip_type_code = trip_type.trip_type_code
        JOIN
    employee ON trip.guide_employee_id = employee.employee_id
        LEFT JOIN
    reservation ON trip.trip_number = reservation.trip_number
GROUP BY destination_name, trip_type_name, trip_number, trip_date, capacity
ORDER BY destination_name , trip_type_name , trip_date , trip_number