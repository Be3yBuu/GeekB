UPDATE users
	set update_at = NOW()
		Where update_at is null;
UPDATE users
	set created_at = NOW()
		Where created_at is null;