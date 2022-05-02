CREATE VIEW yelp.state_activity_2017 AS
SELECT 
    state,
    businesses AS num_of_small_business,
    reviews_in_state / businesses AS volume_of_activity
FROM
    (SELECT 
        state,
            COUNT(DISTINCT (review.new_business_id)) AS reviews_in_state
    FROM
        yelp.review
    JOIN yelp.business ON review.new_business_id = business.id
    WHERE
        YEAR(date) = 2017 AND is_open = 1
    GROUP BY state) AS state_reviews
        JOIN
    yelp.state ON state.name = state_reviews.state