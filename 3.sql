SELECT
user_id,
(COUNT(`like`.media_id)+
COUNT(`like`.post_id)+
COUNT(`like`.message_id)) as likes
FROM vk.`like`
where 
    `like`.user_id in (select * from (SELECT `profile`.user_id FROM vk.`profile` order by birthday desc limit 10)as ten_young)
GROUP BY user_id