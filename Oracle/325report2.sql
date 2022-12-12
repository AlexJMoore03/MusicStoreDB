--Alex Moore
--CS 325 - Fall 2022
--8 December 2022
spool 325report2-results.txt

--This report nicely formats the Employees that Teach Lessons query
ttitle left 'Employees that Teach Lessons'
col employee_id heading 'Employee ID'
col 'Name' heading 'Employee Name'

SELECT DISTINCT employee.employee_id, CONCAT(empl_first_name, empl_last_name) AS Name
FROM employee, lesson
WHERE employee.employee_id = lesson.employee_id;

clear columns
ttitle off
spool off