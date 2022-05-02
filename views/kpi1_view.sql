CREATE VIEW kpi_1 AS (
	SELECT count_engage/count_elite
    FROM count_elite_engagement, count_elite);