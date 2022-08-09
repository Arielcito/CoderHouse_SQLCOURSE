CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `hospital`.`turno` AS
    SELECT 
        `p`.`patient_last_name` AS `patient_last_name`,
        `d`.`doctor_last_name` AS `doctor_last_name`,
        `app`.`appointment_date_of_creation` AS `appointment_date_of_creation`,
        `app`.`appointment_date` AS `appointment_date`
    FROM
        ((`hospital`.`appointment` `app`
        JOIN `hospital`.`patient` `p` ON ((`app`.`patient_id` = `p`.`patient_id`)))
        JOIN `hospital`.`doctor` `d` ON ((`app`.`doctor_id` = `d`.`doctor_id`)))