SELECT 
	created_at, 
	(case when created_at in ('2018-08-01', '2016-08-04', '2018-08-16', '2018-08-17') then 1 else 0 end) `1?`
FROM users
Where Month(created_at) = 8

-- Написано, что даны даты за 2018 год, но среди них 2016???