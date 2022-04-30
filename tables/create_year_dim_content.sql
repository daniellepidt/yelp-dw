INSERT INTO yelp_dw.year_dim
SELECT
	ROW_NUMBER() OVER () AS year_id,
    YEAR(date) as year
FROM yelp.review
GROUP BY year