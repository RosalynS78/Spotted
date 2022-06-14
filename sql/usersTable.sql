DROP TABLE IF EXISTS users, usersCredentials;

CREATE TABLE users (
	id INT UNSIGNED AUTO_INCREMENT,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	email VARCHAR(50),
  	phone VARCHAR(50),
	city VARCHAR(50),
  	state VARCHAR(50),
  	zip VARCHAR(50),
	PRIMARY KEY (id)
);

CREATE TABLE usersCredentials (
  	id INT NOT NULL AUTO_INCREMENT,
  	username VARCHAR(25),
 	password VARCHAR(100),
  	PRIMARY KEY (id),
  	UNIQUE KEY (username)
);

INSERT INTO users
	(first_name, last_name, email, phone, city, state, zip)
VALUES
	("Joe", "Dirt", "cory.gibes@gmail.com", "626-696-2777", "San Diego", "CA", 92101),
	("Ricky", "Martin", "josephine_darakjy@darakjy.org", "810-292-9388", "San Antonio", "TX", 78015),
	("Celine", "Dion", "lai@gmail.com", "415-926-6089", "Las Vegas", "NV", 88901),
	("Sandra", "Bullock", "barrett.toyama@toyama.org", "817-577-6151", "Roswell", "NM", 88202),
	("Channing", "Tatum", "levi.munis@gmail.com", "508-658-7802", "Jackson", "MS", 39056);
	






