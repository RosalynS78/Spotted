SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS pet_found, pet_missing, pet_type, pet_location;

CREATE TABLE pet_found (
	pet_id INT NOT NULL AUTO_INCREMENT,
	pet_name VARCHAR (50) NOT NULL,
	sex VARCHAR (10) NOT NULL,
	age VARCHAR (10) NOT NULL,
	photo_LONGBLOB NOT NULL,
    lastseen_date VARCHAR (50),
	PRIMARY KEY (pet_id)
	FOREIGN KEY (id) REFERENCES users (id) 
	ON DELETE CASCADE
);

CREATE TABLE pet_missing (
	pet_id INT NOT NULL AUTO_INCREMENT,
	pet_name VARCHAR (50) NOT NULL,
	sex VARCHAR (10) NOT NULL,
	age VARCHAR (10) NOT NULL,
	photo_LONGBLOB NOT NULL,
    lastseen_date VARCHAR (50),
	PRIMARY KEY (pet_id)
	FOREIGN KEY (id) REFERENCES users (id) 
	ON DELETE CASCADE
);

CREATE TABLE pet_type (
	pet_id INT NOT NULL AUTO_INCREMENT,
	dog,
	cat,
	bird,
	reptile,
	other
);

CREATE TABLE pet_location (
	pet_id INT NOT NULL AUTO_INCREMENT,
	latitude,
    longitude
);

INSERT INTO users
	(first_name, last_name)
VALUES
	("Joe", "Dirt"),
	("Ricky", "Martin"),
	("Celine", "Dion"),
	("Sandra", "Bullock"),
	("Channing", "Tatum");