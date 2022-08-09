CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `hospital`.`doctor_from_monte_grande` AS
    SELECT 
        `d`.`doctor_last_name` AS `doctor_last_name`,
        `d`.`doctor_specialty` AS `doctor_specialty`,
        `r`.`roomtype` AS `roomtype`,
        `h`.`hospital_name` AS `hospital_name`
    FROM
        ((`hospital`.`doctor` `d`
        JOIN `hospital`.`room` `r` ON ((`d`.`room_id` = `r`.`room_id`)))
        JOIN `hospital`.`hospital` `h` ON ((`r`.`hospital_id` = `h`.`hospital_id`)))
    WHERE
        (`r`.`hospital_id` = 1)