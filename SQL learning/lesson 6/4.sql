SELECT
gender,
COUNT(*)
FROM(
	SELECT
	gender,
	(COUNT(`like`.media_id)+COUNT(`like`.post_id)+COUNT(`like`.message_id))
	FROM 
	vk.`like`
	JOIN vk.`profile` ON `like`.user_id = `profile`.user_id
	GROUP BY `like`.user_id
	) as both_tables
GROUP BY gender
ORDER BY COUNT(*) DESC
LIMIT 1