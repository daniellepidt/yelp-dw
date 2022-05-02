CREATE VIEW market_share_kpi AS
SELECT 
    COUNT(state) / 50 AS Market_Share_KPI
FROM
    yelp_dw.business_dim
WHERE
    volume_of_activity BETWEEN 0.2 AND 1
GROUP BY state;