-- Alex Moore
-- CS 325 - Fall 2022
-- 8 December 2022

DELETE FROM lesson_taking;
DELETE FROM lesson_day;
DELETE FROM lesson_time;
DELETE FROM lesson;
DELETE FROM service_type;
DELETE FROM service;
DELETE FROM rental;
DELETE FROM beginner_instrument;
DELETE FROM advanced_instrument;
DELETE FROM instrument;
DELETE FROM customer;
DELETE FROM reception_artists;
DELETE FROM reception;
DELETE FROM employee;

INSERT INTO employee
VALUES (1, 'Alex', 'Moore', 100000, '2022-12-05');
INSERT INTO employee
VALUES (2, 'John', 'Rose', 90000, '2022-01-24');
INSERT INTO employee
VALUES (3, 'Bob', 'Wright', 80000, '2022-08-15');
INSERT INTO employee
VALUES (4, 'Susan', 'Lennon', 90000, '2022-09-01');
INSERT INTO employee
VALUES (5, 'Carl', 'Shoemaker', 60000, '2022-01-30');
INSERT INTO employee
VALUES (6, 'James', 'Johnson', 55000, '2021-10-11');
INSERT INTO employee
VALUES (7, 'Jim', 'Beam', 80000, '2021-12-21');
INSERT INTO employee
VALUES (8, 'Samantha', 'Anderson', 90000, '2022-02-26');
INSERT INTO employee
VALUES (9, 'Paul', 'Smith', 100000, '2022-04-05');
INSERT INTO employee
VALUES (10, 'Tucker', 'Jones', 110000, '2021-03-09');

INSERT INTO reception
VALUES (1, '2022-12-05', 60, 1);
INSERT INTO reception
VALUES (2, '2022-08-03', 60, 2);
INSERT INTO reception
VALUES (3, '2022-09-12', 30, 3);
INSERT INTO reception
VALUES (4, '2022-10-31', 60, 4);
INSERT INTO reception
VALUES (5, '2022-06-14', 60, 5);
INSERT INTO reception
VALUES (6, '2022-07-23', 30, 6);
INSERT INTO reception
VALUES (7, '2022-07-04', 60, 7);
INSERT INTO reception
VALUES (8, '2022-04-07', 90, 8);
INSERT INTO reception
VALUES (9, '2022-11-12', 60, 9);
INSERT INTO reception
VALUES (10, '2022-12-01', 60, 10);

INSERT INTO reception_artists
VALUES (1, 'Frank Sinatra');
INSERT INTO reception_artists
VALUES (2, 'John Lennon');
INSERT INTO reception_artists
VALUES (3, 'Paul McCartney');
INSERT INTO reception_artists
VALUES (4, 'Axel Rose');
INSERT INTO reception_artists
VALUES (5, 'The Beatles');
INSERT INTO reception_artists
VALUES (6, 'Metallica');
INSERT INTO reception_artists
VALUES (7, 'Radiohead');
INSERT INTO reception_artists
VALUES (8, 'Dean Martin');
INSERT INTO reception_artists
VALUES (9, 'Jamiroquai');
INSERT INTO reception_artists
VALUES (10, 'Cheech and Chong');

INSERT INTO customer
VALUES (1, 'John', 'Doe');
INSERT INTO customer
VALUES (2, 'Jane', 'Doe');
INSERT INTO customer
VALUES (3, 'Bob', 'Peters');
INSERT INTO customer
VALUES (4, 'George', 'Hill');
INSERT INTO customer
VALUES (5, 'Chester', 'Davidson');
INSERT INTO customer
VALUES (6, 'Cleetus', 'Johnson');
INSERT INTO customer
VALUES (7, 'Sue', 'Granger');
INSERT INTO customer
VALUES (8, 'Bill', 'Martin');
INSERT INTO customer
VALUES (9, 'Jared', 'Smith');
INSERT INTO customer
VALUES (10, 'Dale', 'Gribble');

INSERT INTO instrument
VALUES (1, 'Flute', '2022-01-12', 200, 1);
INSERT INTO instrument
VALUES (2, 'Flute', '2022-01-12', 200, 2);
INSERT INTO instrument
VALUES (3, 'Flute', '2022-09-20', 150, 3);
INSERT INTO instrument
VALUES (4, 'Trumpet', '2022-01-12', 250, NULL);
INSERT INTO instrument
VALUES (5, 'Trumpet', '2022-09-20', 250, NULL);
INSERT INTO instrument
VALUES (6, 'Clarinet', '2022-01-12', 200, 7);
INSERT INTO instrument
VALUES (7, 'Clarinet', '2022-01-12', 250, NULL);
INSERT INTO instrument
VALUES (8, 'Clarinet', '2022-09-20', 250, NULL);
INSERT INTO instrument
VALUES (9, 'Saxophone', '2022-01-12', 400, 10);
INSERT INTO instrument
VALUES (10, 'Saxophone', '2022-12-05', 450, NULL);
INSERT INTO instrument
VALUES (11, 'Flute', '2022-04-30', 250, NULL);
INSERT INTO instrument
VALUES (12, 'Flute', '2022-01-11', 150, 2);
INSERT INTO instrument
VALUES (13, 'Flute', '2022-09-01', 150, 2);
INSERT INTO instrument
VALUES (14, 'Trumpet', '2022-12-05', 100, 1);
INSERT INTO instrument
VALUES (15, 'Trumpet', '2022-09-20', 150, 3);
INSERT INTO instrument
VALUES (16, 'Clarinet', '2022-12-05', 200, NULL);
INSERT INTO instrument
VALUES (17, 'Clarinet', '2022-01-12', 250, NULL);
INSERT INTO instrument
VALUES (18, 'Clarinet', '2022-09-20', 300, 4);
INSERT INTO instrument
VALUES (19, 'Saxophone', '2022-01-12', 350, NULL);
INSERT INTO instrument
VALUES (20, 'Saxophone', '2022-12-02', 400, NULL);

INSERT INTO advanced_instrument
VALUES (2);
INSERT INTO advanced_instrument
VALUES (19);
INSERT INTO advanced_instrument
VALUES (9);
INSERT INTO advanced_instrument
VALUES (1);
INSERT INTO advanced_instrument
VALUES (3);
INSERT INTO advanced_instrument
VALUES (6);
INSERT INTO advanced_instrument
VALUES (13);
INSERT INTO advanced_instrument
VALUES (12);
INSERT INTO advanced_instrument
VALUES (14);
INSERT INTO advanced_instrument
VALUES (15);

INSERT INTO beginner_instrument
VALUES (4, 20);
INSERT INTO beginner_instrument
VALUES (5, 20);
INSERT INTO beginner_instrument
VALUES (7, 20);
INSERT INTO beginner_instrument
VALUES (8, 15);
INSERT INTO beginner_instrument
VALUES (10, 20);
INSERT INTO beginner_instrument
VALUES (11, 25);
INSERT INTO beginner_instrument
VALUES (16, 25);
INSERT INTO beginner_instrument
VALUES (17, 25);
INSERT INTO beginner_instrument
VALUES (18, 30);
INSERT INTO beginner_instrument
VALUES (20, 20);

INSERT INTO rental
VALUES (1, '2022-12-05', '2022-12-12', 1, 4);
INSERT INTO rental
VALUES (2, '2022-08-05', '2022-08-12', 2, 5);
INSERT INTO rental
VALUES (3, '2022-12-05', '2022-12-12', 3, 7);
INSERT INTO rental
VALUES (4, '2022-08-20', '2022-08-27', 4, 8);
INSERT INTO rental
VALUES (5, '2022-05-05', '2022-05-12', 5, 10);
INSERT INTO rental
VALUES (6, '2022-12-06', '2022-12-13', 6, 11);
INSERT INTO rental
VALUES (7, '2022-05-05', '2022-05-12', 7, 16);
INSERT INTO rental
VALUES (8, '2022-08-05', '2022-08-12', 8, 17);
INSERT INTO rental
VALUES (9, '2022-12-05', '2022-12-12', 9, 18);
INSERT INTO rental
VALUES (10, '2022-05-15', '2022-05-22', 10, 20);

INSERT INTO service
VALUES (1, 1, 4);
INSERT INTO service
VALUES (2, 10, 5);
INSERT INTO service
VALUES (3, 5, 7);
INSERT INTO service
VALUES (4, 8, 8);
INSERT INTO service
VALUES (5, 6, 10);
INSERT INTO service
VALUES (6, 2, 11);
INSERT INTO service
VALUES (7, 7, 16);
INSERT INTO service
VALUES (8, 3, 17);
INSERT INTO service
VALUES (9, 4, 18);
INSERT INTO service
VALUES (10, 9, 20);

INSERT INTO service_type
VALUES (1, 'Repair');
INSERT INTO service_type
VALUES (2, 'Repair');
INSERT INTO service_type
VALUES (3, 'Repair');
INSERT INTO service_type
VALUES (4, 'Clean');
INSERT INTO service_type
VALUES (5, 'Repair');
INSERT INTO service_type
VALUES (6, 'Repair');
INSERT INTO service_type
VALUES (7, 'Clean');
INSERT INTO service_type
VALUES (8, 'Repair');
INSERT INTO service_type
VALUES (9, 'Clean');
INSERT INTO service_type
VALUES (10, 'Clean');

INSERT INTO lesson
VALUES (1, 10);
INSERT INTO lesson
VALUES (2, 5);
INSERT INTO lesson
VALUES (3, 5);
INSERT INTO lesson
VALUES (4, 5);
INSERT INTO lesson
VALUES (5, 1);
INSERT INTO lesson
VALUES (6, 2);
INSERT INTO lesson
VALUES (7, 2);
INSERT INTO lesson
VALUES (8, 2);
INSERT INTO lesson
VALUES (9, 4);
INSERT INTO lesson
VALUES (10, 7);

INSERT INTO lesson_time
VALUES (1, '15:00:00');
INSERT INTO lesson_time
VALUES (2, '15:00:00');
INSERT INTO lesson_time
VALUES (3, '16:00:00');
INSERT INTO lesson_time
VALUES (4, '16:00:00');
INSERT INTO lesson_time
VALUES (5, '17:00:00');
INSERT INTO lesson_time
VALUES (6, '17:00:00');
INSERT INTO lesson_time
VALUES (7, '18:00:00');
INSERT INTO lesson_time
VALUES (8, '18:00:00');
INSERT INTO lesson_time
VALUES (9, '11:00:00');
INSERT INTO lesson_time
VALUES (10, '12:00:00');

INSERT INTO lesson_day
VALUES (1, 'Monday');
INSERT INTO lesson_day
VALUES (2, 'Tuesday');
INSERT INTO lesson_day
VALUES (3, 'Monday');
INSERT INTO lesson_day
VALUES (4, 'Tuesday');
INSERT INTO lesson_day
VALUES (5, 'Monday');
INSERT INTO lesson_day
VALUES (6, 'Tuesday');
INSERT INTO lesson_day
VALUES (7, 'Monday');
INSERT INTO lesson_day
VALUES (8, 'Tuesday');
INSERT INTO lesson_day
VALUES (9, 'Wednesday');
INSERT INTO lesson_day
VALUES (10, 'Friday');

INSERT INTO lesson_taking
VALUES (1, 3);
INSERT INTO lesson_taking
VALUES (2, 9);
INSERT INTO lesson_taking
VALUES (3, 4);
INSERT INTO lesson_taking
VALUES (4, 4);
INSERT INTO lesson_taking
VALUES (5, 3);
INSERT INTO lesson_taking
VALUES (6, 9);
INSERT INTO lesson_taking
VALUES (7, 5);
INSERT INTO lesson_taking
VALUES (8, 8);
INSERT INTO lesson_taking
VALUES (9, 1);
INSERT INTO lesson_taking
VALUES (10, 10);