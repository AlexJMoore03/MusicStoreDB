--Alex Moore
--CS 325 - Fall 2022
--8 December 2022
spool 325query-results.txt

SET LINESIZE 200

prompt Query 1 Cheapest Instruments
SELECT *
FROM instrument
WHERE purchase_price < (
SELECT AVG(purchase_price)
FROM instrument);

prompt Query 2 Average Instrument Prices
SELECT instrument_type, AVG(purchase_price)
FROM instrument
GROUP BY instrument_type;

prompt Query 3 Employees that Teach Lessons
SELECT DISTINCT employee.employee_id, empl_first_name, empl_last_name
FROM employee, lesson
WHERE employee.employee_id = lesson.employee_id;

prompt Query 4 Oldest Flutes
SELECT *
FROM instrument
WHERE instrument_type = 'Flute' AND acquisition_date < '01-FEB-2022';

prompt Query 5 Daily Lessons
SELECT *
FROM lesson_day
ORDER BY lesson_day;

prompt Query 6 Repairs List
SELECT service_id
FROM service_type
WHERE service_type = 'Repair';

prompt Query 7 Current Rentals
SELECT *
FROM rental
WHERE rental_duedate > '9-DEC-2022';

prompt Query 8 Cheapest Beginner Instrument ID
SELECT *
FROM beginner_instrument
WHERE rental_price = (
SELECT MIN(rental_price)
FROM beginner_instrument);

spool off