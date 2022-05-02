SELECT 
    user_dim.user_id,
    name,
    0.9 * grade + 0.1 * businesses_reviewed_in_2017 / max_review AS final_grade
FROM
    yelp_dw.user_dim
        JOIN
    yelp_dw.reviews_per_user ON user_dim.user_id = reviews_per_user
    CROSS JOIN 
    yelp_dw.max_reviews_for_user
ORDER BY final_grade DESC