USE www;

SELECT 
    nickname,
    CONCAT(first_name, ' ', last_name) AS 'employee name',
    role_name
FROM
    employee
        JOIN
    plays_role ON employee.employee_id = plays_role.employee_id
        JOIN
    role ON plays_role.role_code = role.role_code
ORDER BY nickname , role_name