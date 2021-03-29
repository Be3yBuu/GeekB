CREATE PROCEDURE `hello` ()
BEGIN
	select
		case
			when hour(now()) >= 6 and hour(now()) <12 then 'Доброе утро'
			when hour(now()) >= 12 and hour(now()) <18 then 'Добрый день'
			when hour(now()) >= 18 and hour(now()) <0 then 'Добрый вечер'
			else 'Доброй ночи'
		end as привет;
END