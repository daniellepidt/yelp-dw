CREATE TABLE yelp_business (
	id INT AUTO_INCREMENT PRIMARY KEY,
	business_id VARCHAR(22) NOT NULL, 
	name VARCHAR(66) NOT NULL, 
	neighborhood VARCHAR(40), 
	address VARCHAR(118) NOT NULL, 
	city VARCHAR(50), 
	state VARCHAR(3) NOT NULL, 
	postal_code VARCHAR(8), 
	latitude DECIMAL(38, 15) NOT NULL, 
	longitude DECIMAL(38, 18) NOT NULL, 
	stars FLOAT NOT NULL, 
	review_count INT NOT NULL, 
	is_open BOOL NOT NULL, 
	categories VARCHAR(286)
);
