DROP TABLE IF EXISTS petsMissing;

CREATE TABLE petsMissing (
	user_id VARCHAR(50),
	-- SERIAL is an auto-incremented integer column
	pet_id SERIAL PRIMARY KEY,
	pet_name VARCHAR(50) NOT NULL,
	-- fixed-length character type
	gender CHAR(10) NOT NULL,
	age VARCHAR (50) NOT NULL,
	-- varbinary uses less space
	photo VARBINARY (20) NOT NULL,
    lastseen_date VARCHAR (50),
	lost_status CHAR(10) NOT NULL
);

INSERT INTO petsMissing
	(pet_name, gender, age, photo, lastseen_date, lost_status)
VALUES
	("Leo","Male","10","MEDIUMBLOB","06.20.22", "Lost"),
	("Jack","Male","4","MEDIUMBLOB","04.18.22", "Lost");
