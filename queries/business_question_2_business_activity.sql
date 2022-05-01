SELECT 
    state,
    COUNT(DISTINCT (business_dim.business_id)) AS active_businesses,
    num_of_small_business,
    volume_of_activity
FROM
    yelp_dw.review_facts
        JOIN
    yelp_dw.business_dim ON review_facts.business_id = business_dim.business_id
        JOIN
    yelp_dw.year_dim ON review_facts.year_id = year_dim.year_id
WHERE
    is_open = 1 AND year = 2017
GROUP BY state
ORDER BY volume_of_activity DESC, num_of_small_business DESC