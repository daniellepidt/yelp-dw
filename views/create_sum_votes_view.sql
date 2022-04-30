CREATE VIEW sum_votes_view AS
    SELECT 
        user_id,
        useful + funny + cool AS sum_votes
    FROM
        yelp.user