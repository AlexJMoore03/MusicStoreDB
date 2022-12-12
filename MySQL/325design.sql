--  Alex Moore
--  CS 325 - Fall 2022
--  8 December 2022

DROP TABLE IF EXISTS lesson_taking;
DROP TABLE IF EXISTS lesson_day;
DROP TABLE IF EXISTS lesson_time;
DROP TABLE IF EXISTS lesson;
DROP TABLE IF EXISTS service_type;
DROP TABLE IF EXISTS service;
DROP TABLE IF EXISTS rental;
DROP TABLE IF EXISTS beginner_instrument;
DROP TABLE IF EXISTS advanced_instrument;
DROP TABLE IF EXISTS instrument;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS reception_artists;
DROP TABLE IF EXISTS reception;
DROP TABLE IF EXISTS employee;

-- Employee table holds info related to employees
CREATE TABLE employee(
	employee_id integer,
	empl_first_name varchar(30),
	empl_last_name varchar(30),
	salary decimal(10,2),
	hiredate date,
	PRIMARY KEY(employee_id)
);

-- Reception table holds info related to reception, duration in minutes, employee_id is manager
CREATE TABLE reception(
	reception_id integer,
	reception_date date,
	duration integer,
	employee_id integer NOT NULL,
	PRIMARY KEY(reception_id),
	FOREIGN KEY(employee_id) REFERENCES employee(employee_id)
);

-- Reception artists table holds data for the MV attribute artist of reception
CREATE TABLE reception_artists(
	reception_id integer,
	artist varchar(30),
	PRIMARY KEY(reception_id, artist),
	FOREIGN KEY(reception_id) REFERENCES reception(reception_id)
);

-- Customer table holds info related to customers
CREATE TABLE customer(
	customer_id integer,
	cust_first_name varchar(30),
	cust_last_name varchar(30),
	PRIMARY KEY(customer_id)
);

-- Instrument table holds info related to instrument, customer_id is owner
CREATE TABLE instrument(
	instrument_id integer,
	instrument_type varchar(30),
	acquisition_date date,
	purchase_price decimal(10,2),
	customer_id integer,
	PRIMARY KEY(instrument_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

-- Advanced instrument holds advanced instrument id's
CREATE TABLE advanced_instrument(
	instrument_id integer,
	PRIMARY KEY(instrument_id),
	FOREIGN KEY(instrument_id) REFERENCES instrument(instrument_id)
);

-- Beginner instrument holds beginner instrument id's
CREATE TABLE beginner_instrument(
	instrument_id integer,
	rental_price decimal(10,2),
	PRIMARY KEY(instrument_id),
	FOREIGN KEY(instrument_id) REFERENCES instrument(instrument_id)
);

-- Rental table holds info related to rentals
CREATE TABLE rental(
	rental_id integer,
	rental_date date,
	rental_duedate date NOT NULL,
	customer_id integer,
	instrument_id integer,
	PRIMARY KEY(rental_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(instrument_id) REFERENCES instrument(instrument_id)
);

-- Service table holds info related to services, employee_id is servicer, instrument_id is instrument being serviced
CREATE TABLE service(
	service_id integer,
	employee_id integer,
	instrument_id integer,
	PRIMARY KEY(service_id),
	FOREIGN KEY(employee_id) REFERENCES employee(employee_id),
	FOREIGN KEY(instrument_id) REFERENCES instrument(instrument_id)
);

-- Service type table holds data for the MV attribute service_type of service
CREATE TABLE service_type(
	service_id integer,
	service_type varchar(30),
	PRIMARY KEY(service_id, service_type),
	FOREIGN KEY(service_id) REFERENCES service(service_id)
);

-- Lesson table holds info related to lessons, employee_id is instructor
CREATE TABLE lesson(
	lesson_id integer,
	employee_id integer,
	PRIMARY KEY(lesson_id),
	FOREIGN KEY(employee_id) REFERENCES employee(employee_id)
);

-- Lesson time table holds data for the MV attribute lesson_time of lesson
CREATE TABLE lesson_time(
	lesson_id integer,
	lesson_time varchar(30),
	PRIMARY KEY(lesson_id, lesson_time),
	FOREIGN KEY(lesson_id) REFERENCES lesson(lesson_id)
);

-- Lesson day table holds data for the MV attribute lesson_day of lesson (day of the week to be repeated)
CREATE TABLE lesson_day(
	lesson_id integer,
	lesson_day varchar(30),
	PRIMARY KEY(lesson_id, lesson_day),
	FOREIGN KEY(lesson_id) REFERENCES lesson(lesson_id)
);

-- Lesson taking table holds data for taking lesson N:M relation
CREATE TABLE lesson_taking(
	lesson_id integer,
	customer_id integer NOT NULL,
	PRIMARY KEY(lesson_id, customer_id),
	FOREIGN KEY(lesson_id) REFERENCES lesson(lesson_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);