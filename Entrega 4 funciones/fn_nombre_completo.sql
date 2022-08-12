CREATE DEFINER=`root`@`localhost` FUNCTION `complete_name`(Nombre varchar(20),Apellido varchar(20)) RETURNS char(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	declare complete_name varchar(20);
    set complete_name = concat(Apellido,', ',Nombre);
RETURN complete_name;
END