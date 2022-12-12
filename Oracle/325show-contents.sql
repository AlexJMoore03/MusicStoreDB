--Alex Moore
--CS 325 - Fall 2022
--8 December 2022
spool 325result-contents.txt

SET LINESIZE 200

prompt Employee
SELECT *
FROM employee;

prompt Reception
SELECT *
FROM reception;

prompt Reception_Artists
SELECT *
FROM reception_artists;

prompt Customer
SELECT *
FROM customer;

prompt Instrument
SELECT *
FROM instrument;

prompt Advanced_Instrument
SELECT *
FROM advanced_instrument;

prompt Beginner_Instrument
SELECT *
FROM beginner_instrument;

prompt rental
SELECT *
FROM rental;

prompt Service
SELECT *
FROM service;

prompt Service_Type
SELECT *
FROM service_type;

prompt Lesson
SELECT *
FROM lesson;

prompt Lesson_Time
SELECT *
FROM lesson_time;

prompt Lesson_Day
SELECT *
FROM lesson_day;

prompt Lesson_Taking
SELECT *
FROM lesson_taking;

spool off