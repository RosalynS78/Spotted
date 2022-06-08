SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS qrcode;

CREATE TABLE qrcode (
	id INT NOT NULL,
	pet_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	pet_name VARCHAR (50) NOT NULL,
	sex VARCHAR (10) NOT NULL,
	age VARCHAR (10) NOT NULL,
    qr VARBINARY (20) not null,
	PRIMARY KEY (pet_id),
	FOREIGN KEY (id) 
	REFERENCES users (id) 
	ON DELETE CASCADE
);

INSERT INTO qrcode
	(pet_id, id, pet_name, sex, age, qr)
VALUES
	(100,1,"Fido","Male","5","MEDIUMBLOB"),
    (200,2,"Leo","Male","10","MEDIUMBLOB"),
	(300,3,"Tiger","Female","12","MEDIUMBLOB"),
    (400,4,"Jack","Male","4","MEDIUMBLOB"),
	(500,5,"Hiro","Female","6","MEDIUMBLOB");