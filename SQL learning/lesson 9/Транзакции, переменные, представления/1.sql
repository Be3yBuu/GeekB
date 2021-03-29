Start Transaction;

set foreign_key_checks= 0;

DELETE FROM sample.users
where id=1;

INSERT INTO sample.users
    SELECT *
    FROM shop.users WHERE id = 1;

set foreign_key_checks=1;
Commit;