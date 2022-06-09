
DROP TABLE IF EXISTS pets, pet_found, pet_missing, pet_type, pet_location;

CREATE TABLE pets (
	id INT NOT NULL,
	pet_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	pet_name VARCHAR(50) NOT NULL,
	sex VARCHAR (50) NOT NULL,
	age VARCHAR (50) NOT NULL,
	photo VARBINARY (20) not null,
    lastseen_date VARCHAR (50),
	PRIMARY KEY (pet_id),
	FOREIGN KEY (id)
  	REFERENCES users (id)
    ON DELETE CASCADE
);

CREATE TABLE pet_found (
	id INT NOT NULL,
	pet_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	pet_name VARCHAR (50) NOT NULL,
	sex VARCHAR (10) NOT NULL,
	age VARCHAR (10) NOT NULL,
    photo VARBINARY (20) not null,
    lastseen_date VARCHAR (50),
	PRIMARY KEY (id),
	FOREIGN KEY (pet_id)
  	REFERENCES pets (pet_id)
    ON DELETE CASCADE
);

CREATE TABLE pet_missing (
	id INT NOT NULL,
	pet_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	pet_name VARCHAR (50) NOT NULL,
	sex VARCHAR (10) NOT NULL,
	age VARCHAR (10) NOT NULL,
	photo VARBINARY (20) NOT NULL,
    lastseen_date VARCHAR (50),
	PRIMARY KEY (id),
	FOREIGN KEY (pet_id)
  	REFERENCES pets (pet_id)
    ON DELETE CASCADE
);

CREATE TABLE pet_type (
	id INT NOT NULL,
	pet_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	species VARCHAR (50) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (pet_id)
  	REFERENCES pets (pet_id)
    ON DELETE CASCADE

); 

CREATE TABLE pet_location (
	id INT NOT NULL,
	pet_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	location VARCHAR(250) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (pet_id)
  	REFERENCES pets (pet_id)
    ON DELETE CASCADE
	

);
INSERT INTO pets
	(pet_id, id, pet_name, sex, age, photo, lastseen_date)
VALUES
	(100,1,"Fido","Male","5","MEDIUMBLOB","01.05.22"),
	(200,2,"Leo","Male","10","MEDIUMBLOB","06.20.22"),
	(300,3,"Tiger","Female","12","MEDIUMBLOB","03.16.22" ),
	(400,4,"Jack","Male","4","MEDIUMBLOB","04.18.22"),
	(500,5,"Hiro","Female","6","MEDIUMBLOB","08.19.22");

INSERT INTO pet_found 
	(pet_id, id, pet_name, sex, age, photo, lastseen_date)
VALUES
	(100,1,"Fido","Male","5","MEDIUMBLOB","01.05.22"),
	(300,3,"Tiger","Female","12","MEDIUMBLOB","03.16.22" ),
	(500,5,"Hiro","Female","6","MEDIUMBLOB","08.19.22");

INSERT INTO pet_missing
	(pet_id, id, pet_name, sex, age, photo, lastseen_date)
VALUES
	(200,2,"Leo","Male","10","MEDIUMBLOB","06.20.22"),
	(400,4,"Jack","Male","4","MEDIUMBLOB","04.18.22");

INSERT INTO pet_type
	(pet_id, id, species)
VALUES
	(100,1,"Dog"),
	(300,3,"Reptile"),
	(500,5,"Bird"),
	(200,2,"Cat"),
	(400,4,"Other");

INSERT INTO pet_location
	(pet_id, id,  location)
VALUES
	(100,1,"16.08863, -7.06641"),
	(300,2,"33.98872, -83.89796"),
	(500,3,"41.9431, -86.55697"),
	(200,4,"10.2495, 44.6193"),
	(400,5,"38.86456, -77.18776");



