CREATE TABLE yelp_review (
	id INT AUTO_INCREMENT PRIMARY KEY,
	review_id VARCHAR(22) NOT NULL, 
	user_id VARCHAR(22) NOT NULL, 
	business_id VARCHAR(22) NOT NULL, 
	stars INT NOT NULL, 
	date DATE NOT NULL, 
	text VARCHAR(5010) NOT NULL, 
	useful INT NOT NULL, 
	funny INT NOT NULL, 
	cool INT NOT NULL
);
