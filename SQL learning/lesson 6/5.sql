select `profile`.firstname, `profile`.lastname, activity, `profile`.user_id from (SELECT  
	Pro.user_id,
	(
	IF(Pos.posts is not NULL, Pos.posts, 0)+
	IF(Lik.likes is not NULL, Lik.likes, 0)+
	IF(Med.medias is not NULL, Med.medias, 0)+
	IF(Mes.messages is not NULL, Mes.messages, 0)
	) as activity
FROM (SELECT `profile`.user_id FROM vk.profile) as Pro
LEFT JOIN (
	SELECT 
	post.user_id,
	COUNT(*) as posts
	FROM vk.post
	GROUP BY post.user_id
    ) as Pos
    ON Pro.user_id=Pos.user_id
LEFT JOIN (
	SELECT 
	`like`.user_id,
	COUNT(*) as likes
	FROM vk.`like`
	GROUP BY `like`.user_id
    ) as Lik
	ON Pro.user_id=Lik.user_id
LEFT JOIN (
	SELECT 
	media.user_id,
	COUNT(*) as medias
	FROM vk.media
	GROUP BY media.user_id
    ) as Med
	ON Pro.user_id=Med.user_id
LEFT JOIN (
	SELECT 
	message.from_user_id,
	COUNT(*) as messages
	FROM vk.message
	GROUP BY message.from_user_id
    ) as Mes
	ON Pro.user_id=Mes.from_user_id
ORDER BY activity
LIMIT 0,10) as lowest
left join `profile` on lowest.user_id = `profile`.user_id