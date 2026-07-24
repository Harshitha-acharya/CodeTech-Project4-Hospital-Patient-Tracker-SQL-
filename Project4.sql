CREATE DATABASE HospitalDB;

USE HospitalDB;
/*craete table patient*/
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    Phone VARCHAR(15)
);
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(100),
    Specialization VARCHAR(100)
);
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    Diagnosis VARCHAR(200),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
CREATE TABLE Treatments (
    TreatmentID INT PRIMARY KEY,
    AppointmentID INT,
    TreatmentName VARCHAR(100),
    Cost DECIMAL(10,2),
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);
/*insert sameple data of patients doctors,and appointment,traetement*/
INSERT INTO Patients VALUES
(1,'Harish','Male',22,'9876543210'),
(2,'Ravi','Male',30,'9123456780'),
(3,'Anjali','Female',25,'9988776655');
INSERT INTO Doctors VALUES
(101,'Dr. Mehta','Cardiology'),
(102,'Dr. Sharma','Orthopedics'),
(103,'Dr. Priya','General Medicine');
INSERT INTO Appointments VALUES
(1001,1,103,'2026-07-20','Fever'),
(1002,2,101,'2026-07-21','Chest Pain'),
(1003,3,102,'2026-07-22','Fracture');
INSERT INTO Treatments VALUES
(1,1001,'Medication',500),
(2,1002,'ECG Test',2000),
(3,1003,'X-Ray',1500);
/*view table*/
SELECT * FROM Patients;
SELECT * FROM Doctors;
SELECT
p.PatientName,
d.DoctorName,
d.Specialization,
a.AppointmentDate,
a.Diagnosis
FROM Appointments a
JOIN Patients p
ON a.PatientID = p.PatientID
JOIN Doctors d
ON a.DoctorID = d.DoctorID;
SELECT
p.PatientName,
t.TreatmentName,
t.Cost
FROM Treatments t
JOIN Appointments a
ON t.AppointmentID = a.AppointmentID
JOIN Patients p
ON a.PatientID = p.PatientID;
/*total tratement cost*/
SELECT
SUM(Cost) AS TotalTreatmentCost
FROM Treatments;
/*no of patients traeted by each doctor*/
SELECT
d.DoctorName,
COUNT(a.PatientID) AS TotalPatients
FROM Doctors d
JOIN Appointments a
ON d.DoctorID = a.DoctorID
GROUP BY d.DoctorName;
/*most expensive treatement*/
SELECT
TreatmentName,
Cost
FROM Treatments
ORDER BY Cost DESC
LIMIT 1;
