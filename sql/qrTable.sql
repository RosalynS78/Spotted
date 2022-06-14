
DROP TABLE IF EXISTS qrcode;

CREATE TABLE qrcode (
	user_id VARCHAR(50),
	-- SERIAL is an auto-incremented integer column
	pet_id SERIAL PRIMARY KEY,
	pet_name VARCHAR(50) NOT NULL,
	gender CHAR(10) NOT NULL,
	age VARCHAR (50) NOT NULL,
	-- varbinary uses less space
	photo VARBINARY (20) NOT NULL,
	lost_status CHAR(10) NOT NULL,
	qr_code VARBINARY (20) not null
);

INSERT INTO qrcode
	(pet_name, gender, age, photo, qr_code, lost_status)
VALUES
	("Fido","Male","5","MEDIUMBLOB","MEDIUMBLOB","Found"),
    ("Leo","Male","10","MEDIUMBLOB","MEDIUMBLOB","Lost"),
	("Tiger","Female","12","MEDIUMBLOB","MEDIUMBLOB","Found"),
    ("Jack","Male","4","MEDIUMBLOB","MEDIUMBLOB","Lost"),
	("Hiro","Female","6","MEDIUMBLOB","MEDIUMBLOB","Found");