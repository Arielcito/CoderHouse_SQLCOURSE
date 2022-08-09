CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `hospital`.`historial_medico` AS
    SELECT 
        `p`.`patient_last_name` AS `patient_last_name`,
        `d`.`doctor_last_name` AS `doctor_last_name`,
        `h`.`hospital_name` AS `hospital_name`,
        `m`.`symptom` AS `symptom`
    FROM
        (((`hospital`.`medical_history` `m`
        JOIN `hospital`.`patient` `p` ON ((`m`.`patient_id` = `p`.`patient_id`)))
        JOIN `hospital`.`doctor` `d` ON ((`m`.`doctor_id` = `d`.`doctor_id`)))
        JOIN `hospital`.`hospital` `h` ON ((`m`.`hospital_id` = `h`.`hospital_id`)))