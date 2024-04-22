create database healthcare;
use healthcare;
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender CHAR(1),
    address VARCHAR(100),
    contact_number VARCHAR(20)
);
INSERT INTO Patients (patient_id, first_name, last_name, date_of_birth, gender, address, contact_number)
VALUES
(1, 'John', 'Doe', '1980-05-15', 'M', '123 Main St, Cityville', '123-456-7890'),
(2, 'Jane', 'Smith', '1975-10-20', 'F', '456 Elm St, Townsville', '987-654-3210'),
(3, 'Emily', 'Johnson', '1992-03-08', 'F', '789 Oak St, Villageton', '456-789-0123'),
(4, 'Michael', 'Williams', '1988-11-25', 'M', '321 Pine St, Hilltown', '789-012-3456'),
(5, 'Sarah', 'Davis', '1990-07-12', 'F', '567 Maple St, Riverside', '234-567-8901'),
(6, 'James', 'Brown', '1983-09-28', 'M', '890 Cedar St, Lakeside', '345-678-9012'),
(7, 'Jessica', 'Taylor', '1979-04-05', 'F', '901 Birch St, Mountainview', '456-789-0123'),
(8, 'David', 'Martinez', '1970-08-25', 'M', '123 Cedar St, Lakeside', '567-890-1234'),
(9, 'Sophia', 'Rodriguez', '1984-12-08', 'F', '456 Elm St, Townsville', '123-456-7890'),
(10, 'William', 'Martinez', '1973-03-25', 'M', '789 Oak St, Beachside', '012-345-6789'),
(11, 'Isabella', 'Garcia', '1986-06-17', 'F', '890 Pine St, Hilltop', '901-234-5678'),
(12, 'Ethan', 'Lopez', '1998-01-05', 'M', '123 Cedar St, Lakeside', '890-123-4567'),
(13, 'Alexander', 'Hernandez', '1976-10-29', 'M', '567 Maple St, Riverside', '789-012-3456'),
(14, 'Mia', 'Hill', '1980-03-14', 'F', '678 Birch St, Mountainview', '678-901-2345'),
(15, 'Charlotte', 'Young', '1993-08-19', 'F', '789 Oak St, Beachside', '567-890-1234'),
(16, 'Jessica', 'Brown', '1982-09-12', 'F', '567 Maple St, Riverside', '456-789-0123'),
(17, 'Daniel', 'Taylor', '1978-04-30', 'M', '678 Birch St, Mountainview', '345-678-9012'),
(18, 'Olivia', 'Davis', '1990-07-22', 'F', '890 Pine St, Hilltop', '234-567-8901'),
(19, 'Michael', 'Clark', '1988-11-03', 'M', '890 Cedar St, Riverside', '456-789-0123'),
(20, 'Emily', 'Lewis', '1979-07-14', 'F', '567 Pine St, Hilltop', '123-456-7890');

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialty VARCHAR(50),
    contact_number VARCHAR(20),
    email VARCHAR(100)
);

INSERT INTO Doctors (doctor_id, first_name, last_name, specialty, contact_number, email)
VALUES
(1, 'Dr. Michael', 'Johnson', 'Cardiology', '555-123-4567', 'm.johnson@example.com'),
(2, 'Dr. Sarah', 'Williams', 'Pediatrics', '555-987-6543', 's.williams@example.com'),
(3, 'Dr. John', 'Doe', 'Orthopedics', '555-555-5555', 'j.doe@example.com'),
(4, 'Dr. Emily', 'Smith', 'Oncology', '555-111-2222', 'e.smith@example.com'),
(5, 'Dr. David', 'Brown', 'Neurology', '555-333-4444', 'd.brown@example.com'),
(6, 'Dr. Jennifer', 'Garcia', 'Dermatology', '555-666-7777', 'j.garcia@example.com'),
(7, 'Dr. Robert', 'Martinez', 'Endocrinology', '555-888-9999', 'r.martinez@example.com'),
(8, 'Dr. Jessica', 'Taylor', 'Gynecology', '555-000-1111', 'j.taylor@example.com'),
(9, 'Dr. Andrew', 'Wilson', 'Psychiatry', '555-999-8888', 'a.wilson@example.com'),
(10, 'Dr. Samantha', 'Anderson', 'Ophthalmology', '555-777-6666', 's.anderson@example.com'),
(11, 'Dr. William', 'Thomas', 'Urology', '555-222-3333', 'w.thomas@example.com'),
(12, 'Dr. Laura', 'Robinson', 'Family Medicine', '555-444-5555', 'l.robinson@example.com');

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status)
VALUES
(1, 1, 1, '2024-04-21', '09:00:00', 'confirmed'),
(2, 2, 2, '2024-04-22', '10:30:00', 'confirmed'),
(3, 3, 3, '2024-04-23', '11:00:00', 'confirmed'),
(4, 4, 4, '2024-04-24', '13:45:00', 'pending'),
(5, 5, 5, '2024-04-25', '14:30:00', 'confirmed'),
(6, 6, 6, '2024-04-26', '15:15:00', 'confirmed'),
(7, 7, 7, '2024-04-27', '16:00:00', 'confirmed'),
(8, 8, 8, '2024-04-28', '17:00:00', 'pending'),
(9, 9, 9, '2024-04-29', '09:30:00', 'confirmed'),
(10, 10, 10, '2024-04-30', '10:00:00', 'confirmed');

INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status)
VALUES
(11, 1, 1, '2024-05-01', '11:30:00', 'confirmed'),
(12, 2, 2, '2024-05-02', '12:15:00', 'confirmed'),
(13, 3, 3, '2024-05-03', '13:00:00', 'confirmed'),
(14, 4, 4, '2024-05-04', '14:30:00', 'pending'),
(15, 5, 5, '2024-05-05', '15:00:00', 'confirmed'),
(16, 6, 6, '2024-05-06', '16:15:00', 'confirmed'),
(17, 7, 7, '2024-05-07', '17:30:00', 'confirmed'),
(18, 8, 8, '2024-05-08', '09:45:00', 'pending'),
(19, 9, 9, '2024-05-09', '10:30:00', 'confirmed'),
(20, 10, 10, '2024-05-10', '11:00:00', 'confirmed');



CREATE TABLE MedicalRecords (
    record_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    visit_date DATE,
    diagnosis VARCHAR(255),
    treatment VARCHAR(255),
    prescription VARCHAR(255),
    notes TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
INSERT INTO MedicalRecords (record_id, patient_id, doctor_id, visit_date, diagnosis, treatment, prescription, notes)
VALUES
(1, 1, 1, '2024-04-21', 'Hypertension', 'Prescribed medication and lifestyle changes', 'Medication X, Exercise regimen', 'Patient advised to monitor blood pressure regularly.'),
(2, 2, 2, '2024-04-22', 'Common Cold', 'Rest and hydration recommended', 'None', 'Patient reported mild fever and cough.'),
(3, 3, 3, '2024-04-23', 'Diabetes', 'Insulin therapy and dietary modifications', 'Insulin, Low-carb diet', 'Patient instructed on proper insulin administration.'),
(4, 4, 4, '2024-04-24', 'Fractured Arm', 'Splinting and pain management', 'Pain medication, Arm splint', 'Follow-up appointment scheduled in 2 weeks for reevaluation.'),
(5, 5, 5, '2024-04-25', 'Asthma', 'Bronchodilators and avoidance of triggers', 'Albuterol inhaler', 'Patient advised to avoid smoke and allergens.'),
(6, 6, 6, '2024-04-26', 'Gastritis', 'Antacids and dietary changes', 'Antacid medication', 'Patient instructed to avoid spicy and acidic foods.'),
(7, 7, 7, '2024-04-27', 'Anxiety Disorder', 'Cognitive-behavioral therapy and relaxation techniques', 'None', 'Patient referred to a psychologist for further therapy.'),
(8, 8, 8, '2024-04-28', 'Migraine', 'Pain management and lifestyle adjustments', 'Sumatriptan, Stress reduction', 'Patient advised to maintain a regular sleep schedule.'),
(9, 9, 9, '2024-04-29', 'Gastroenteritis', 'Hydration and dietary restrictions', 'None', 'Patient advised to rest and consume clear fluids.'),
(10, 10, 10, '2024-04-30', 'Allergic Rhinitis', 'Antihistamines and allergen avoidance', 'Cetirizine, Nasal saline spray', 'Patient advised to avoid outdoor activities during high pollen seasons.');

CREATE TABLE InsuranceInformation (
    insurance_id INT PRIMARY KEY,
    patient_id INT,
    insurance_company VARCHAR(100),
    policy_number VARCHAR(50),
    policy_holder_name VARCHAR(100),
    policy_expiry_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

INSERT INTO InsuranceInformation (insurance_id, patient_id, insurance_company, policy_number, policy_holder_name, policy_expiry_date)
VALUES
(1, 1, 'ABC Insurance', '123456', 'John Doe', '2025-06-30'),
(2, 2, 'XYZ Insurance', '987654', 'Jane Smith', '2024-12-31'),
(3, 3, 'DEF Insurance', '654321', 'Emily Johnson', '2023-09-15'),
(4, 4, 'GHI Insurance', '456789', 'Michael Brown', '2026-03-20'),
(5, 5, 'JKL Insurance', '789123', 'Jessica Taylor', '2024-08-10'),
(6, 6, 'MNO Insurance', '321987', 'David Garcia', '2025-05-05'),
(7, 7, 'PQR Insurance', '555444', 'Sarah Martinez', '2023-11-30'),
(8, 8, 'STU Insurance', '222333', 'Andrew Wilson', '2024-04-25'),
(9, 9, 'VWX Insurance', '888999', 'Laura Robinson', '2026-01-15'),
(10, 10, 'YZA Insurance', '444555', 'Samantha Anderson', '2024-10-01');




