-- medical history and treatment
drop table if  exists LOG_INSERT;
CREATE TABLE IF NOT EXISTS LOG_INSERT 
(
log_id INT AUTO_INCREMENT ,
action_name VARCHAR(10) ,
table_name VARCHAR(50) ,
field_id int,
user VARCHAR(100) ,
modified_date DATE,
PRIMARY KEY (log_id)
);

drop table if  exists LOG_UPDATE;
CREATE TABLE IF NOT EXISTS LOG_UPDATE 
(
log_id INT AUTO_INCREMENT ,
action_name VARCHAR(10) ,
table_name VARCHAR(50) ,
field varchar(500),
field_id varchar(50),
user VARCHAR(100) ,
modified_date DATE,
PRIMARY KEY (log_id)
);

DELIMITER //
CREATE TRIGGER TRG_LOG_INSERT_TREATMENT AFTER INSERT ON hospital.treatment
FOR EACH ROW 
BEGIN

INSERT INTO LOG_INSERT (action_name , table_name,field_id , user,modified_date)
VALUES ( 'INSERT' , 'treatment' ,new.treatment_id,CURRENT_USER() , NOW());

END//
DELIMITER ;

drop trigger TRG_LOG_INSERT_TREATMENT;

DELIMITER //
CREATE TRIGGER TRG_LOG_UPDATE_TREATMENT AFTER UPDATE ON hospital.treatment
FOR EACH ROW 
BEGIN

INSERT INTO LOG_UPDATE (field,field_id,action_name , table_name , user,modified_date)
VALUES (CONCAT('CAMPO ANTERIOR : ', OLD.treatment ,'  CAMPO NUEVO : ' , NEW.treatment ) ,NEW.treatment_id, 'UPDATE' , 'treatment' ,CURRENT_USER(), NOW());

END//
DELIMITER ;

drop trigger TRG_LOG_UPDATE_TREATMENT;

DELIMITER //
CREATE TRIGGER TRG_LOG_DELETE_TREATMENT BEFORE DELETE ON hospital.treatment
FOR EACH ROW 
BEGIN

INSERT INTO LOG_UPDATE (field,field_id,action_name , table_name , user,modified_date)
VALUES (  CONCAT('', OLD.treatment),OLD.treatment_id,'DELETE' , 'treatment' ,CURRENT_USER() , NOW());

END//
DELIMITER ;

INSERT INTO treatment values
(null,1,2,3,"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis lacus a sem commodo porta. Etiam egestas fermentum lacus a dapibus. ",1);
SELECT * FROM LOG_INSERT;

update hospital.treatment
set treatment = "hola"
where treatment_id=23;
SELECT * FROM LOG_UPDATE;

delete from treatment
where treatment_id = 23;
SELECT * FROM LOG_UPDATE;

DELIMITER //
CREATE TRIGGER TRG_LOG_INSERT_MEDICAL_HISTORY AFTER INSERT ON hospital.medical_history
FOR EACH ROW 
BEGIN

INSERT INTO LOG_INSERT (action_name , table_name,field_id , user,modified_date)
VALUES ( 'INSERT' , 'medical_history' ,new.history_id,CURRENT_USER() , NOW());

END//
DELIMITER ;

drop trigger TRG_LOG_INSERT_MEDICAL_HISTORY;

DELIMITER //
CREATE TRIGGER TRG_LOG_UPDATE_MEDICAL_HISTORY AFTER UPDATE ON hospital.medical_history
FOR EACH ROW 
BEGIN

INSERT INTO LOG_UPDATE (field,field_id,action_name , table_name , user,modified_date)
VALUES (CONCAT('CAMPO ANTERIOR : ', OLD.symptom ,'  CAMPO NUEVO : ' , NEW.symptom ) ,NEW.history_id, 'UPDATE' , 'medical_history' ,CURRENT_USER(), NOW());

END//
DELIMITER ;

drop trigger TRG_LOG_UPDATE_MEDICAL_HISTORY;

DELIMITER //
CREATE TRIGGER TRG_LOG_DELETE_MEDICAL_HISTORY BEFORE DELETE ON hospital.medical_history
FOR EACH ROW 
BEGIN

INSERT INTO LOG_UPDATE (field,field_id,action_name , table_name , user,modified_date)
VALUES (  CONCAT('', OLD.symptom ),OLD.history_id,'DELETE' , 'medical_history' ,CURRENT_USER() , NOW());

END//
DELIMITER ;

drop trigger TRG_LOG_DELETE_MEDICAL_HISTORY;

INSERT INTO medical_history values
(null,1,1,1,"Fiebre Alta",1);
SELECT * FROM LOG_INSERT;

update medical_history
set symptom = "hola"
where history_id=16;
SELECT * FROM LOG_UPDATE;

delete from medical_history
where history_id =16;
SELECT * FROM LOG_UPDATE;