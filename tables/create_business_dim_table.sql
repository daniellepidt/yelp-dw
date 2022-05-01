CREATE TABLE yelp_dw.business_dim (
    business_id INT AUTO_INCREMENT PRIMARY KEY,
    state VARCHAR(3) NOT NULL,
    stars FLOAT NOT NULL,
    is_open BOOL NOT NULL,
    num_of_small_business INT,
    volume_of_activity FLOAT
);