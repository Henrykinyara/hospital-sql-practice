-- 1. List all patients and their latest visit date
SELECT p.full_name, MAX(v.visit_date) AS last_visit
FROM Patients p
JOIN Visits v ON p.patient_id = v.patient_id
GROUP BY p.full_name;

-- 2. How many visits has each doctor handled?
SELECT doctor_name, COUNT(*) AS total_visits
FROM Visits
GROUP BY doctor_name;

-- 3. Which patient has received the most diagnoses?
SELECT p.full_name, COUNT(d.diagnosis_id) AS diagnosis_count
FROM Patients p
JOIN Visits v ON p.patient_id = v.patient_id
JOIN Diagnoses d ON v.visit_id = d.visit_id
GROUP BY p.full_name
ORDER BY diagnosis_count DESC;

-- 4. What are the most common diagnoses?
SELECT diagnosis, COUNT(*) AS frequency
FROM Diagnoses
GROUP BY diagnosis
ORDER BY frequency DESC;

-- 5. List all visits with diagnoses for female patients only
SELECT p.full_name, p.gender, v.visit_date, d.diagnosis
FROM Patients p
JOIN Visits v ON p.patient_id = v.patient_id
JOIN Diagnoses d ON v.visit_id = d.visit_id
WHERE p.gender = 'F';