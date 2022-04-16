CREATE TABLE yelp.user (
  id INT AUTO_INCREMENT PRIMARY KEY,
	user_id VARCHAR(22) NOT NULL,
	name VARCHAR(33),
	review_count INT NOT NULL,
	yelping_since DATE NOT NULL,
	friends MEDIUMTEXT,
	useful INT NOT NULL,
	funny INT NOT NULL,
	cool INT NOT NULL,
	fans INT NOT NULL,
	elite MEDIUMTEXT,
	average_stars FLOAT NOT NULL,
	compliment_hot INT NOT NULL,
	compliment_more INT NOT NULL,
	compliment_profile INT NOT NULL,
	compliment_cute INT NOT NULL,
	compliment_list INT NOT NULL,
	compliment_note INT NOT NULL,
	compliment_plain INT NOT NULL,
	compliment_cool INT NOT NULL,
	compliment_funny INT NOT NULL,
	compliment_writer INT NOT NULL,
	compliment_photos INT NOT NULL
);