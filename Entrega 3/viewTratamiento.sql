CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `hospital`.`tratamiento` AS
    SELECT 
        `m`.`medicine_name` AS `medicine_name`,
        `p`.`patient_last_name` AS `patient_last_name`,
        `d`.`doctor_last_name` AS `doctor_last_name`,
        `t`.`treatment` AS `treatment`,
        `t`.`treatment_status` AS `treatment_status`
    FROM
        (((`hospital`.`treatment` `t`
        JOIN `hospital`.`medicine` `m` ON ((`t`.`medicine_id` = `m`.`medicine_id`)))
        JOIN `hospital`.`patient` `p` ON ((`t`.`patient_id` = `p`.`patient_id`)))
        JOIN `hospital`.`doctor` `d` ON ((`t`.`doctor_id` = `d`.`doctor_id`)))