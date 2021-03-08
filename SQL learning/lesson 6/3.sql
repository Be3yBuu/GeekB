SELECT
user_id,
(COUNT(`like`.media_id)+
COUNT(`like`.post_id)+
COUNT(`like`.message_id)) as likes
FROM vk.`like`
where
	`like`.user_id = (SELECT `profile`.user_id FROM vk.`profile` order by birthday desc limit 0,1) or
	`like`.user_id = (SELECT `profile`.user_id FROM vk.`profile` order by birthday desc limit 1,1) or
	`like`.user_id = (SELECT `profile`.user_id FROM vk.`profile` order by birthday desc limit 2,1) or
	`like`.user_id = (SELECT `profile`.user_id FROM vk.`profile` order by birthday desc limit 3,1) or
    `like`.user_id = (SELECT `profile`.user_id FROM vk.`profile` order by birthday desc limit 4,1) or
    `like`.user_id = (SELECT `profile`.user_id FROM vk.`profile` order by birthday desc limit 5,1) or
    `like`.user_id = (SELECT `profile`.user_id FROM vk.`profile` order by birthday desc limit 6,1) or
    `like`.user_id = (SELECT `profile`.user_id FROM vk.`profile` order by birthday desc limit 7,1) or
    `like`.user_id = (SELECT `profile`.user_id FROM vk.`profile` order by birthday desc limit 8,1) or
    `like`.user_id = (SELECT `profile`.user_id FROM vk.`profile` order by birthday desc limit 9,1)
GROUP BY user_id
    