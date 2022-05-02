CREATE VIEW market_share_kpi AS
SELECT 
    COUNT(*) / 50 AS Market_Share_KPI
FROM
    yelp.state_activity_2017
WHERE
    volume_of_activity > 0.2;