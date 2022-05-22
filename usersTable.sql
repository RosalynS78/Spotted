DROP TABLE IF EXISTS users, usersContact, usersLocation;

    CREATE TABLE users (
        id INT NOT NULL AUTO_INCREMENT,
        user_id INT NOT NULL,
		first_name VARCHAR (50) NOT NULL,
		last_name VARCHAR (50) NOT NULL,
        PRIMARY KEY (id)

);

    CREATE TABLE usersContact (
        id INT NOT NULL AUTO_INCREMENT, 
        user_id INT NOT NULL,
		email VARCHAR(50) NOT NULL,
		phone VARCHAR(50) NOT NULL,
        PRIMARY KEY (id),
        FOREIGN KEY (user_id)
        REFERENCES users (id) 
           ON DELETE CASCADE
);

    CREATE TABLE usersLocation (
        id INT NOT NULL AUTO_INCREMENT,
        user_id INT NOT NULL,
		city VARCHAR(50) NOT NULL,
		state VARCHAR(50) NOT NULL,
        zip VARCHAR(50) NOT NULL,
        PRIMARY KEY (id),
        FOREIGN KEY (user_id)
        REFERENCES users (id)
           ON DELETE CASCADE
);
 

INSERT INTO users
	(user_id, first_name, last_name)
	VALUES
	(1,"Joe", "Dirt"),
	(2,"Ricky", "Martin"),
	(3,"Celine", "Dion"),
	(4,"Sandra", "Bullock"),
	(5,"Channing", "Tatum");

INSERT INTO usersContact
	(user_id, email, phone)
	VALUES
	(1,"cory.gibes@gmail.com", "626-696-2777"),
	(2,"josephine_darakjy@darakjy.org", "810-292-9388"),
	(3, "lai@gmail.com", "415-926-6089"),
	(4, "barrett.toyama@toyama.org", "817-577-6151"),
	(5, "levi.munis@gmail.com", "508-658-7802");

INSERT INTO usersLocation
	(user_id, city, state, zip)
	VALUES
	(1, "San Diego", "CA", "92101"),
	(2, "San Antonio", "TX", "78015"),
	(3, "Las Vegas", "NV", "88901"),
	(4, "Roswell", "NM", "88202"),
	(5, "Jackson", "MS", "39056");





