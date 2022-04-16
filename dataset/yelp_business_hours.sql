-- This table wasn't modified for usage
CREATE TABLE yelp_business_hours (
	id INT AUTO_INCREMENT PRIMARY KEY,
	business_id VARCHAR(22) NOT NULL, 
	monday VARCHAR(11), 
	tuesday VARCHAR(11), 
	wednesday VARCHAR(11), 
	thursday VARCHAR(11), 
	friday VARCHAR(11), 
	saturday VARCHAR(11), 
	sunday VARCHAR(11)
);
