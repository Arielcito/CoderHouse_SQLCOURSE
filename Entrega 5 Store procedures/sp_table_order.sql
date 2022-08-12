CREATE DEFINER=`root`@`localhost` PROCEDURE `table_order`(in header varchar(20),in order_by varchar(10))
BEGIN
	declare final_table varchar(100);
    set @final_table = concat('select * from patient order by ',header,' ',order_by,';');
    prepare runSQL from @final_table;
    execute runSQL;
    deallocate prepare runSQL;
END