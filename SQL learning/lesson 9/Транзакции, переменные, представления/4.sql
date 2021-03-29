SET SQL_SAFE_UPDATES = 0;
delete from tblname where created_at not in (select * from(
	select created_at cr from tblname
	order by created_at
	limit 1,5) cr2
);
SET SQL_SAFE_UPDATES = 1;