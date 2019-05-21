USE www;

SELECT 
    destination.destination_name,
    trip_type.trip_type_name,
    trip.trip_number,
    trip.trip_date,
    CONCAT(employee.first_name,
            ' ',
            employee.last_name) AS 'guide name',
    employee.mobile_phone AS 'guide mobile_phone',
    '414-555-1212' AS 'Wilma’s Wild Wisconsin Office Phone',
    trip.latest_guest_arrival_time,
    trip.departure_time,
    trip.estimated_return_time,
    gathering_point_description
FROM
    destination
        JOIN
    trip ON destination.destination_code = trip.destination_code
        JOIN
    trip_type ON trip.trip_type_code = trip_type.trip_type_code
        JOIN
    employee ON trip.guide_employee_id = employee.employee_id
        JOIN
    gathering_point ON trip.gathering_point_id = gathering_point.gathering_point_id
ORDER BY destination_name , trip_type_name , trip_date