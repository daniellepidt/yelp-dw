INSERT INTO yelp_dw.business_dim
SELECT 
    id AS business_id,
    business.state,
    stars,
    is_open,
    num_of_small_business,
    volume_of_activity
FROM
    yelp.business
        LEFT JOIN
    yelp.state_activity_2017 ON business.state = state_activity_2017.state;