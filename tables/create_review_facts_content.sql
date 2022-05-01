INSERT INTO yelp_dw.review_facts
SELECT
	id AS review_id,
    LENGTH(text) AS text_length,
    new_user_id AS user_id,
    new_business_id AS business_id,
    year_id,
    vote_id
FROM yelp.review JOIN yelp_dw.year_dim ON YEAR(review.date) = year_dim.year
	JOIN yelp_dw.vote_dim ON review.useful + review.funny + review.cool = vote_dim.sum_votes;