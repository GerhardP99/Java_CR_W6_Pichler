----- Shows all employees with their information nice formated
SELECT employee_id AS "ID",
	   first_name AS "First Name",
       last_name AS "Last Name",
       telephone AS "Telephone Number",
       address AS "Address"
FROM employees

----- Shows all packages with their information nice formated
SELECT package_id AS "ID",
	   package_size AS "Size",
       package_weight AS "Weight",
       sender_address AS "Sender Address",
       receiver_address AS "Receiver Address"
FROM packages

----- Shows all locations with their information nice formated
SELECT location_id AS "ID",
	   name AS "Station Name",
       address AS "Station Address",
       type AS "Station Type"
FROM location

----- Shows Employees with their Salary inner join
SELECT employee_id AS "ID",
	   first_name AS "First Name",
       last_name AS "Last Name",
       salary.salary AS "Salary"
FROM employees
INNER JOIN salary ON salary.fk_employee_id = employees.employee_id;

----- Shows Employees with their packages they took inner join
SELECT employees.employee_id AS "ID",
	   first_name AS "First Name",
       last_name AS "Last Name",
       packageassignment.package_id AS "Package ID"
FROM employees
INNER JOIN packageassignment ON packageassignment.employee_id = employees.employee_id;

----- Shows Packages with a join to see where they are located in wich location
SELECT package_id AS "Package ID",
       location.location_id AS "Location ID",
       location.name AS "Location Name"
FROM processingsystem
INNER JOIN location ON location.location_id = processingsystem.location_id;