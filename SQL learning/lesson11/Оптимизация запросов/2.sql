DELIMITER $$

CREATE PROCEDURE InsertOneMill(linevar int)
BEGIN
	DECLARE ivar int;
    DECLARE ivarmax int;
    SET ivar = (SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'shop' AND   TABLE_NAME   = 'users');
    SET ivarmax = ivar;
    While ivar < (linevar + ivarmax) do
		set ivar = ivar+1;
		insert into `users` (id) VALUES (ivar);
	END while;
END$$

DELIMITER ;


call InsertOneMill(1000000)