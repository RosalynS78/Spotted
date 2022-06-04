SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS users, usersContact, usersLocation, usersCredentials;

CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE usersContact (
  	id INT NOT NULL AUTO_INCREMENT,
  	user_id INT NOT NULL,
  	email VARCHAR(50),
  	phone VARCHAR(50),
  	PRIMARY KEY (id),
 	FOREIGN KEY (user_id)
  	REFERENCES users (id)
    ON DELETE CASCADE
);

CREATE TABLE usersLocation (
  	id INT NOT NULL AUTO_INCREMENT,
  	user_id INT NOT NULL,
  	city VARCHAR(50),
  	state VARCHAR(50),
  	zip VARCHAR(50),
  	PRIMARY KEY (id),
  	FOREIGN KEY (user_id)
  	REFERENCES users (id)
    ON DELETE CASCADE
);

CREATE TABLE usersCredentials (
  	id INT NOT NULL AUTO_INCREMENT,
  	username VARCHAR(25),
 	password VARCHAR(100),
  	PRIMARY KEY (id),
  	UNIQUE KEY (username)
);


INSERT INTO users
	(first_name, last_name)
VALUES
	("Joe", "Dirt"),
	("Ricky", "Martin"),
	("Celine", "Dion"),
	("Sandra", "Bullock"),
	("Channing", "Tatum");
	

INSERT INTO usersContact
	(user_id, email, phone)
VALUES
	(10,"cory.gibes@gmail.com","626-696-2777"),
	(20,"josephine_darakjy@darakjy.org","810-292-9388"),
	(30,"lai@gmail.com","415-926-6089"),
	(40,"barrett.toyama@toyama.org","817-577-6151"),
	(50,"levi.munis@gmail.com","508-658-7802");

INSERT INTO usersLocation 
	(user_id, city, state, zip)
VALUES
	(10,"San Diego","CA",92101),
	(20,"San Antonio","TX",78015),
	(30,"Las Vegas","NV",88901),
	(40,"Roswell","NM",88202),
	(50,"Jackson","MS",39056);






