CREATE DEFINER=`root`@`localhost` PROCEDURE `treatment_status`()
BEGIN
	declare finished_treatment varchar(100);
    set @finished_treatment = concat('delete from treatment where treatment_status = 0;');
    prepare runSQL from @finished_treatment;
    execute runSQL;
    deallocate prepare runSQL;
END