# 🏥 Hospital Patient Tracker

## Internship Details

- **Intern ID:** CITS6810
- **Full Name:** Harshitha
- **No. of Week:** 4
- **Project Name:** Hospital Patient Tracker

---

## 📌 Project Overview

The **Hospital Patient Tracker** is a SQL-based database project developed to manage hospital data, including patients, doctors, appointments, and treatments. It demonstrates essential database concepts such as relational database design, table relationships, joins, constraints, filtering, and healthcare data management.

This project simulates a real-world hospital management system where patient records, doctor information, appointments, and treatments are stored and analyzed efficiently using SQL.

---

## 🎯 Project Scope

This project aims to:

- Design a relational database for hospital management.
- Store patient and doctor information.
- Manage appointments and treatment records.
- Maintain relationships using Primary Keys and Foreign Keys.
- Retrieve patient and appointment details.
- Generate treatment reports.
- Analyze doctor appointments and patient records.
- Demonstrate real-world healthcare database management.

---

## 🛠 Technologies Used

- SQL
- MySQL
- Visual Studio Code
- MySQL Extension (VS Code)

---

## 📂 Database Structure

### Patients Table

| Column | Data Type |
|---------|-----------|
| PatientID | INT (Primary Key) |
| PatientName | VARCHAR(100) |
| Age | INT |
| Gender | VARCHAR(10) |
| Phone | VARCHAR(15) |

---

### Doctors Table

| Column | Data Type |
|---------|-----------|
| DoctorID | INT (Primary Key) |
| DoctorName | VARCHAR(100) |
| Specialization | VARCHAR(50) |

---

### Appointments Table

| Column | Data Type |
|---------|-----------|
| AppointmentID | INT (Primary Key) |
| PatientID | INT (Foreign Key) |
| DoctorID | INT (Foreign Key) |
| AppointmentDate | DATE |
| Status | VARCHAR(20) |

---

### Treatments Table

| Column | Data Type |
|---------|-----------|
| TreatmentID | INT (Primary Key) |
| AppointmentID | INT (Foreign Key) |
| Diagnosis | VARCHAR(150) |
| Treatment | VARCHAR(200) |
| Cost | DECIMAL(10,2) |

---

## ✨ Features

- Create Hospital database.
- Manage patient records.
- Store doctor information.
- Schedule appointments.
- Record patient treatments.
- Retrieve appointment history.
- Generate treatment reports.
- Join multiple tables.
- Calculate total treatment cost.
- Analyze doctor-wise appointments.

---

## 📊 SQL Operations Performed

- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- UPDATE
- DELETE
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- SUM()
- COUNT()
- AVG()
- PRIMARY KEY
- FOREIGN KEY

---

## 📸 Sample Output

### Patient Appointments

| AppointmentID | PatientName | DoctorName | AppointmentDate | Status |
|---------------|-------------|------------|-----------------|--------|
| 101 | Rahul Sharma | Dr. Mehta | 2026-07-15 | Completed |
| 102 | Priya Singh | Dr. Rao | 2026-07-16 | Scheduled |
| 103 | Ankit Verma | Dr. Mehta | 2026-07-17 | Completed |

---

### Treatment Details

| PatientName | Diagnosis | Treatment | Cost |
|--------------|-----------|-----------|------|
| Rahul Sharma | Fever | Medication | 1500.00 |
| Priya Singh | Migraine | Consultation | 1200.00 |
| Ankit Verma | Fracture | X-Ray & Cast | 5000.00 |

---

### Total Treatment Cost

| TotalTreatmentCost |
|--------------------|
| 7700.00 |

---

## 📁 Project Files

```
Hospital Patient Tracker/
│
├── hospital_patient_tracker.sql
└── README.md
```

---

## 🚀 Learning Outcomes

Through this project, I learned:

- Relational Database Design
- Healthcare Database Management
- Primary Keys
- Foreign Keys
- CRUD Operations
- SQL Queries
- Data Filtering
- Table Joins
- Aggregate Functions
- Appointment Management
- Treatment Reporting
- Healthcare Data Analysis

---

## 📚 SQL Concepts Covered

- Database Creation
- Constraints
- Primary Key
- Foreign Key
- INSERT
- UPDATE
- DELETE
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- Aggregate Functions
- SUM()
- COUNT()
- AVG()

---

## 👩‍💻 Author

**Harshitha**

**Intern ID:** CITS6810

**Project:** Hospital Patient Tracker