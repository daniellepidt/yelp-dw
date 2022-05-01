CREATE TABLE yelp_dw.review_facts (
    review_id INT AUTO_INCREMENT,
    text_length INT NOT NULL,
    user_id INT,
    business_id INT,
    year_id INT,
    vote_id INT,
    PRIMARY KEY (review_id),
    FOREIGN KEY (user_id)
        REFERENCES user_dim (user_id),
    FOREIGN KEY (business_id)
        REFERENCES business_dim (business_id),
    FOREIGN KEY (year_id)
        REFERENCES year_dim (year_id),
    FOREIGN KEY (vote_id)
        REFERENCES vote_dim (vote_id)
);