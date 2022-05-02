CREATE VIEW elite_engagement AS (
	SELECT reviews_per_user.user_id, elite, businesses_reviewed_in_2017
	FROM reviews_per_user JOIN user_dim on user_dim.user_id = reviews_per_user.user_id
	WHERE businesses_reviewed_in_2017 >= 25);