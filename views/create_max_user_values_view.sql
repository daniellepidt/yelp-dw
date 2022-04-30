CREATE VIEW yelp.max_user_values AS
    SELECT 
        MAX(review_count) AS max_review_count,
        MAX(fans) AS max_fans,
        MAX(useful + funny + cool) AS max_votes,
        MAX(compliment_hot + compliment_more + compliment_profile + compliment_cute + compliment_list + compliment_note + compliment_plain + compliment_cool + compliment_funny + compliment_writer + compliment_photos) AS max_compliments
    FROM
        yelp.user