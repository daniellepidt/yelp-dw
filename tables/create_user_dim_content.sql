INSERT INTO yelp_dw.user_dim
SELECT 
    user_id,
    name,
    review_count,
    sum_votes,
    fans,
    elite,
    sum_compliments,
    0.3 * sum_votes / max_votes + 0.2 * review_count / max_review_count + 0.3 * fans / max_fans + 0.2 * sum_compliments / max_compliments AS grade
FROM
    (SELECT 
        id AS user_id,
		name,
		review_count,
		useful + funny + cool AS sum_votes,
		fans,
		elite,
		compliment_hot + compliment_more + compliment_profile + compliment_cute + compliment_list + compliment_note + compliment_plain + compliment_cool + compliment_funny + compliment_writer + compliment_photos AS sum_compliments,
		max_review_count,
		max_votes,
		max_fans,
		max_compliments
    FROM
        yelp.user
		CROSS JOIN
        yelp.max_user_values
	) AS users