SELECT YEAR(date) as year
FROM yelp.review
GROUP BY year
ORDER BY year DESC