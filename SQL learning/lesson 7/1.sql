SELECT users.id, users.`name`
FROM shop.users
right join orders
	ON orders.user_id = users.id;