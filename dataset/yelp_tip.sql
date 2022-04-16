CREATE TABLE yelp_tip (
  id INT AUTO_INCREMENT PRIMARY KEY,
	text VARCHAR(510), 
	date DATE NOT NULL, 
	likes DECIMAL(38, 0) NOT NULL, 
	business_id VARCHAR(22) NOT NULL, 
	user_id VARCHAR(22) NOT NULL
);