select complete_name(
(select patient_name from patient where patient_id = 1),
(select patient_last_name from patient where patient_id = 1)) 
as nombre_completo;