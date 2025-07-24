CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    gender CHAR(1),
    date_of_birth DATE
);

CREATE TABLE Visits (
    visit_id INT PRIMARY KEY,
    patient_id INT,
    visit_date DATE,
    doctor_name VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

CREATE TABLE Diagnoses (
    diagnosis_id INT PRIMARY KEY,
    visit_id INT,
    diagnosis VARCHAR(255),
    prescribed_treatment VARCHAR(255),
    FOREIGN KEY (visit_id) REFERENCES Visits(visit_id)
);