CREATE VIEW sum_compliments_view AS
    SELECT 
        user_id,
        compliment_hot + compliment_more + compliment_profile + compliment_cute + compliment_list + compliment_note + compliment_plain + compliment_cool + compliment_funny + compliment_writer + compliment_photos AS sum_compliments
    FROM
        yelp.user