CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Mayusculas`(nombre varchar(10)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
return CONCAT(UPPER(SUBSTRING(nombre,1,1)),LOWER(SUBSTRING(nombre,2)));
END