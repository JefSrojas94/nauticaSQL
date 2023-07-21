CREATE TABLE captains(
	captain_id INT NOT NULL PRIMARY KEY,
	captain_name VARCHAR(60) NOT NULL,
	captain_last_name VARCHAR(60) NOT NULL,
	ship_name VARCHAR(60) NOT NULL
);
CREATE TABLE partner(
	partner_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR(60) NOT NULL,
	last_name VARCHAR(60) NOT NULL,
	email VARCHAR(60) NOT NULL,
	phone INT NOT NULL
);
CREATE TABLE boat(
	enrollment VARCHAR(150) NOT NULL PRIMARY KEY,
	partner_id INT NOT NULL,
	FOREIGN KEY(partner_id) REFERENCES	partner(partner_id),
	boat_name VARCHAR(90) NOT NULL,
	mooring_number INT NOT NULL,
	numbre_subscription INT NOT NULL
);
CREATE TABLE travels(
	travel_id SERIAL NOT NULL PRIMARY KEY,
	enrollment VARCHAR UNIQUE NOT NULL,
	captain_id INT NOT NULL,
	FOREIGN KEY(enrollment) REFERENCES	boat(enrollment),
	FOREIGN KEY(captain_id) REFERENCES	captains(captain_id),
);