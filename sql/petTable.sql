DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
	user_id VARCHAR(50),
	-- SERIAL is an auto-incremented integer column
	pet_id SERIAL PRIMARY KEY,
	pet_name VARCHAR(50) NOT NULL,
	gender CHAR(10) NOT NULL,
	age VARCHAR (50) NOT NULL,
	-- varbinary uses less space
	photo VARBINARY (20) NOT NULL,
    lastseen_date VARCHAR (50),
	lost_status CHAR(10) NOT NULL
);

INSERT INTO pets
	(pet_name, gender, age, photo, lastseen_date, lost_status)
VALUES
	("Fido","Male","5","MEDIUMBLOB","01.05.22","Found"),
	("Leo","Male","10","MEDIUMBLOB","06.20.22", "Lost"),
	("Tiger","Female","12","MEDIUMBLOB","03.16.22","Found"),
	("Jack","Male","4","MEDIUMBLOB","04.18.22","Lost"),
	("Hiro","Female","6","MEDIUMBLOB","08.19.22","Found");


