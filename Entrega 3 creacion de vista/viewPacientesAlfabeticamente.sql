CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `hospital`.`pacientes_alpha` AS
    SELECT 
        `hospital`.`patient`.`patient_name` AS `patient_name`,
        `hospital`.`patient`.`patient_last_name` AS `patient_last_name`,
        `hospital`.`patient`.`patient_sex` AS `patient_sex`,
        `hospital`.`patient`.`patient_phone` AS `patient_phone`
    FROM
        `hospital`.`patient`
    ORDER BY `hospital`.`patient`.`patient_name`