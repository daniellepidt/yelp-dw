CREATE TABLE yelp_dw.user_dim (
    user_id VARCHAR(22) PRIMARY KEY NOT NULL,
    name VARCHAR(33),
    review_count INT NOT NULL,
    sum_votes INT NOT NULL,
    fans INT NOT NULL,
    elite MEDIUMTEXT,
    average_stars FLOAT NOT NULL,
    sum_compliments INT NOT NULL,
    grade FLOAT NOT NULL
);