CREATE TABLE yelp_checkin (
	id INT AUTO_INCREMENT PRIMARY KEY,
	business_id VARCHAR(22) NOT NULL, 
	weekday VARCHAR(3) NOT NULL, 
	hour TIME NOT NULL, 
	checkins INT NOT NULL
);
