CREATE SCHEMA netology_task
    CREATE TABLE person 
    (
    	name	VARCHAR(30) NOT NULL,
    	surname VARCHAR(30) NOT NULL,
    	age		INTEGER		NOT NULL 
    				check (age between 16 and 110), /*устанавливаем границы допустимых возрастов*/
    	phone   DOUBLE PRECISION UNIQUE
    				check (length(phone::text) BETWEEN 11 AND 15), /*устанавливаем допустимую длинну номера*/
    	city_of_living VARCHAR(20),
    	PRIMARY KEY (name, surname, age)
	)

INSERT INTO netology_task.person(name, surname, age, phone, city_of_living)
VALUES ('Vasia', 'Pupkin', 25, 79272502258, 'Moscow'),
       ('Kostia', 'Lukin', 28, 79272502343, 'Voroneg'),
       ('Bogdan', 'Ozerov', 30, NULL,'Moscow'),
       ('Sergey', 'Shanin', 25, 79272555555, 'Moscow'),
       ('Oleg', 'Guiko', 55, 79277777777, 'Moscow'),
       ('Sasha', 'Minin', 34, 79278888888, 'Samara'),
       ('Kolia', 'Pupkin', 17, NULL, 'Moscow'),
       ('Sergey', 'Klik', 43, 79275577755, 'Kursk'),
       ('Vasia', 'Aivasyan', 33, 79274665688, 'Moscow'),
       ('Nina', 'Rugko', 34, 7927256565675,   'Moscow'),
       ('Masha', 'Erykina', 67, 792756565658,'Moscow');