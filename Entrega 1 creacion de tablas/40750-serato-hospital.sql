CREATE DATABASE Hospital;
USE Hospital;

CREATE TABLE IF NOT EXISTS patient (
	patient_id int not null auto_increment,
    patient_dni int not null,
    patient_name varchar(10) not null,
    patient_last_name varchar(20) not null,
    patient_social_work varchar(10) not null,
	patient_social_work_number int not null,
	patient_phone varchar(20) not null,
	patient_sex varchar(10) not null,
	patient_address varchar(30) not null,
    primary key(patient_id)
);

CREATE TABLE IF NOT EXISTS hospital (
    hospital_id INT NOT NULL AUTO_INCREMENT,
    hospital_name VARCHAR(50) not null,
    hospital_address VARCHAR(50) not null,
    hospital_contact INT not null,
    PRIMARY KEY (hospital_id)
);

CREATE TABLE IF NOT EXISTS room(
	room_id int not null auto_increment,
    hospital_id int not null,
    roomtype varchar(20),
    primary key(room_id)
);

CREATE TABLE IF NOT EXISTS doctor(
	doctor_id int not null auto_increment,
    room_id int not null,
    doctor_name varchar(10) not null,
    doctor_last_name varchar(10) not null,
    doctor_specialty varchar(40) not null,
    doctor_phone varchar(20) not null,
    doctor_sex varchar(10) not null,
    doctor_address varchar(30) not null,
    primary key(doctor_id)
);

CREATE TABLE IF NOT EXISTS medical_history (
	history_id  int not null auto_increment,
    patient_id int not null,
    doctor_id int not null,
    hospital_id int not null,
    symptom varchar(100) not null,
    treatment_id int not null,
    primary key(history_id)
);

CREATE TABLE IF NOT EXISTS medicine(
	medicine_id int not null auto_increment,
    medicine_price int not null,
    medicine_dosage int not null,
    medicine_days int not null,
    medicine_name varchar(50) not null,
    medicine_type varchar(50) not null,
    primary key(medicine_id)
);

CREATE TABLE IF NOT EXISTS treatment(
	treatment_id int not null auto_increment,
    medicine_id int not null,
    patient_id int not null,
    doctor_id int not null,
    treatment varchar(500) ,
    treatment_status bit not null,
    primary key(treatment_id)
);

CREATE TABLE IF NOT EXISTS appointment(
	appointment_id int not null auto_increment,
    patient_id int not null,
    doctor_id int not null,
    appointment_date_of_creation timestamp not null,
    appointment_date timestamp not null,
    primary key(appointment_id)
);

ALTER TABLE appointment
ADD foreign key (patient_id) references patient(patient_id),
ADD foreign key (doctor_id) references doctor(doctor_id);

ALTER TABLE treatment 
ADD foreign key (medicine_id) references medicine(medicine_id),
ADD    foreign key (doctor_id) references doctor(doctor_id),
ADD    foreign key (patient_id) references patient(patient_id);

ALTER TABLE medical_history
ADD    foreign key (patient_id) references patient(patient_id),
ADD    foreign key (doctor_id) references doctor(doctor_id),
ADD    foreign key (hospital_id) references hospital(hospital_id),
ADD		foreign key (treatment_id) references treatment(treatment_id) on delete cascade;

ALTER TABLE doctor
ADD foreign key (room_id) references room(room_id);

ALTER TABLE room 
ADD  foreign key (hospital_id) references hospital(hospital_id);

