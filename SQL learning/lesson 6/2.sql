SELECT
(
SELECT 
		if (friend_request.to_user_id = 14, friend_request.from_user_id, friend_request.to_user_id)
		FROM 
		vk.friend_request
		where friend_request.`status`=1 and (friend_request.from_user_id = 14 or friend_request.to_user_id = 14)
)as Friend_id
FROM
vk.message
WHERE (message.from_user_id = 14 or message.to_user_id = 14)
AND(
	(
		SELECT 
		if (friend_request.to_user_id = 14, friend_request.from_user_id, friend_request.to_user_id)
		FROM 
		vk.friend_request
		where friend_request.`status`=1 and (friend_request.from_user_id = 14 or friend_request.to_user_id = 14)
    )=message.from_user_id
    OR(
		SELECT 
		if (friend_request.to_user_id = 14, friend_request.from_user_id, friend_request.to_user_id)
		FROM 
		vk.friend_request
		where friend_request.`status`=1 and (friend_request.from_user_id = 14 or friend_request.to_user_id = 14)
    )= message.to_user_id
    )
GROUP BY if (message.to_user_id = 14, message.from_user_id, message.to_user_id)
ORDER BY COUNT(*) DESC
LIMIT 1