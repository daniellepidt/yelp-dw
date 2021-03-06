CREATE VIEW yelp_dw.max_reviews_for_user AS
    SELECT 
        MAX(reviews_per_user) AS max_review
    FROM
        (SELECT 
            COUNT(DISTINCT (business_id)) AS reviews_per_user
        FROM
            yelp_dw.review_facts
        JOIN yelp_dw.user_dim ON review_facts.user_id = user_dim.user_id
        JOIN yelp_dw.year_dim ON review_facts.year_id = year_dim.year_id
        WHERE
            elite LIKE '%2017%' AND year = 2017
        GROUP BY user_dim.user_id) AS reviews