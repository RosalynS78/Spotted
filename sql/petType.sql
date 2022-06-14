DROP TABLE IF EXISTS pet_type;

CREATE TABLE pet_type (
	user_id VARCHAR(50),
	-- SERIAL is an auto-incremented integer column
	pet_id SERIAL PRIMARY KEY,
	species VARCHAR (50) NOT NULL
); 

INSERT INTO pet_type
	(species)
VALUES
	("Dog"),
	("Reptile"),
	("Bird"),
	("Cat"),
	("Other");
