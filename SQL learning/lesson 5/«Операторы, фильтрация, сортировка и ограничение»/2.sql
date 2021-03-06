UPDATE users
	SET created_at = STR_TO_DATE(created_at,'%d.%m.%Y %H:%i');
	ALTER TABLE [db] MODIFY created_at datetime;
	SET updated_at = STR_TO_DATE(updated_at,'%d.%m.%Y %H:%i');
	ALTER TABLE [db] MODIFY updated_at datetime;