CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `products_name` AS
    SELECT 
        `p`.`name` AS `name`, `c`.`name` AS `type`
    FROM
        (`products` `p`
        JOIN `catalogs` `c` ON ((`c`.`id` = `p`.`catalog_id`)))