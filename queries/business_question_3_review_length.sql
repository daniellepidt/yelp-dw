SELECT 
    text_length, sum_votes
FROM
    yelp_dw.review_facts
        JOIN
    yelp_dw.year_dim ON review_facts.year_id = year_dim.year_id
		JOIN
    yelp_dw.vote_dim ON review_facts.vote_id = vote_dim.vote_id
        JOIN
    yelp_dw.business_dim ON review_facts.business_id = business_dim.business_id
WHERE
    year = 2017 AND
    stars >= 4
    
ORDER BY text_length DESC, sum_votes DESC