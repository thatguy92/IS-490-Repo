USE www;

SELECT 
    destination_name,
    trip_type_name,
    trip.trip_number,
    trip_date,
    CONCAT(employee.first_name,
            ' ',
            employee.last_name) AS 'guide name',
    CONCAT(guest.first_name, ' ', guest.last_name) AS 'guest name',
    experience_name,
    age,
    weight,
    isSwimmer,
    guest.mobile_phone AS 'guest mobile_phone'
FROM
    destination
        JOIN
    trip ON destination.destination_code = trip.destination_code
        JOIN
    trip_type ON trip.trip_type_code = trip_type.trip_type_code
        JOIN
    employee ON trip.guide_employee_id = employee.employee_id
        JOIN
    reservation ON trip.trip_number = reservation.trip_number
        JOIN
    guest ON reservation.guest_id = guest.guest_id
        JOIN
    experience ON guest.experience_code = experience.experience_code
ORDER BY destination_name , trip_type_name , trip_date , CONCAT(guest.first_name, ' ', guest.last_name)