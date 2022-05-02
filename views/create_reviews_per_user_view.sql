CREATE VIEW yelp_dw.reviews_per_user AS
    SELECT 
        user_dim.user_id,
        COUNT(DISTINCT (business_id)) AS businesses_reviewed_in_2017
    FROM
        yelp_dw.review_facts
            JOIN
        yelp_dw.user_dim ON review_facts.user_id = user_dim.user_id
            JOIN
        yelp_dw.year_dim ON review_facts.year_id = year_dim.year_id
    WHERE
        elite LIKE '%2017%' AND year = 2017
    GROUP BY user_dim.user_id