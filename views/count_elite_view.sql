CREATE VIEW count_elite AS(
	SELECT COUNT(*) AS count_elite, elite
    FROM user_dim
    WHERE elite LIKE '%2017%');