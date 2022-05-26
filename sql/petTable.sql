DROP TABLE IF EXISTS pet, pet_type, pet_status, pet_description, pet_location;

pet Table:
	CREATE TABLE pet (
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		pet_id INT NOT NULL,
		FOREIGN KEY (users_id) REFERENCES users (id),
		pet_name VARCHAR (100) 
);

pet_type Table:
	CREATE TABLE pet_type (
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		pet_id INT NOT NULL,
		pet_type VARCHAR (100) NOT NULL
);

pet_status Table:
	CREATE TABLE pet_status (
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		pet_id INT NOT NULL,
		tag VARCHAR (50) NOT NULL,
        lastseen_date  VARCHAR (50)
);

pet_description Table:
	CREATE TABLE pet_description (
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		pet_id INT NOT NULL,
		sex VARCHAR (50) NOT NULL,
        age  VARCHAR (50),
        breed_date VARCHAR (50),
        photo
);
pet_location Table:
	CREATE TABLE pet_location (
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		pet_id INT NOT NULL,
		latitude,
        longitude
);