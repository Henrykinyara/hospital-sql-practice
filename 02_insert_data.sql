-- Patients
INSERT INTO Patients VALUES
(1, 'John Kamau', 'M', '1985-02-15'),
(2, 'Grace Njeri', 'F', '1990-07-22'),
(3, 'Michael Otieno', 'M', '1978-12-30'),
(4, 'Janet Wambui', 'F', '2000-01-05');

-- Visits
INSERT INTO Visits VALUES
(101, 1, '2024-01-12', 'Dr. Kiptoo'),
(102, 2, '2024-01-15', 'Dr. Achieng'),
(103, 1, '2024-03-20', 'Dr. Wekesa'),
(104, 3, '2024-04-10', 'Dr. Kiptoo'),
(105, 4, '2024-04-11', 'Dr. Achieng');

-- Diagnoses
INSERT INTO Diagnoses VALUES
(201, 101, 'Malaria', 'Artemether-Lumefantrine'),
(202, 102, 'Typhoid', 'Ciprofloxacin'),
(203, 103, 'Migraine', 'Paracetamol'),
(204, 104, 'Diabetes Type II', 'Insulin'),
(205, 105, 'Common Cold', 'Rest + Flu Medication');