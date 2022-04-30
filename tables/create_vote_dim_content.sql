INSERT INTO yelp_dw.vote_dim
SELECT
	ROW_NUMBER() OVER () AS vote_id,
    useful + funny + cool as sum_votes
FROM yelp.review
GROUP BY sum_votes