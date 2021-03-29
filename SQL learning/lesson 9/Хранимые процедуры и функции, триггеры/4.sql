CREATE DEFINER=`root`@`localhost` PROCEDURE `Fibonacci1`(x int)
BEGIN 
DECLARE i int;
SET i = 3;
drop table if exists temptable;
CREATE TEMPORARY TABLE TempTable (id int, fibnumber int); 
insert INTO TempTable (id, fibnumber) values (0,0);
insert INTO TempTable (id, fibnumber) values (1,1);
	While (i <= x) DO 
		insert INTO TempTable (id, fibnumber) values (
			i, 
			(select fibnumber from temptable where id = i-1)*(select fibnumber from temptable where id = i-2)
            );
            SET i=i+1;
	END WHILE;
SELECT * from temptable
ORDER BY id DESC
LIMIT 1;
drop table temptable;
END

--Должно быть так, но у меня выдаётся ошибка 1137. не знаю, что именно не так