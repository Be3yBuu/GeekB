CREATE DEFINER=`root`@`localhost` TRIGGER `products_BEFORE_INSERT` BEFORE INSERT ON `products` FOR EACH ROW BEGIN
	if ISNULL(NEW.`name`) + ISNULL(NEW.`description`) = 2 THEN
		SIGNAL sqlstate '45000' 
        set message_text = "Not bot empty name and description";
    end if;
end