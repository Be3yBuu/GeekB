CREATE DEFINER=`root`@`localhost` PROCEDURE `FIBONACCI`(n INT, OUT result INT)
BEGIN
  DECLARE n1 INT;
  DECLARE n2 INT;
  IF (n=0) THEN
    SET result=0;
  ELSEIF (n=1) then
    SET result=1;
  ELSE
    CALL FIBONACCI(n-1,n1);
    CALL FIBONACCI(n-2,n2);
    SET result=(n1 + n2);
  END IF;
END