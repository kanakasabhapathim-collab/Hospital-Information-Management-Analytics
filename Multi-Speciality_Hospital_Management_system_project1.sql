create database ABC_Multispeciality_Hospital;
CREATE TABLE mdepartments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) UNIQUE NOT NULL,
    location VARCHAR(50),
    annual_budget NUMERIC(12,2));
INSERT INTO mdepartments VALUES
(1, 'Cardiology', 'Block A', 5000000),
(2, 'Neurology', 'Block B', 4500000),
(3, 'Orthopedics', 'Block C', 4000000),
(4, 'Pediatrics', 'Block A', 3500000),
(5, 'Oncology', 'Block D', 6000000),
(6, 'General Medicine', 'Block B', 3000000),
(7, 'Dermatology', 'Block C', 2500000),
(8, 'ENT', 'Block A', 2000000),
(9, 'Emergency', 'Block E', 5500000),
(10, 'Radiology', 'Block D', 3200000),
(11, 'Psychiatry', 'Block E', 2800000),
(12, 'Dental', 'Block F', 1800000);
select* from mdepartments;

CREATE TABLE mdoctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    department_id INT,
    specialization VARCHAR(100),
    salary NUMERIC(12,2),
    joining_date DATE,
    phone VARCHAR(15),
    status VARCHAR(20),
    FOREIGN KEY (department_id)
    REFERENCES mdepartments(department_id));

INSERT INTO mdoctors VALUES
(101, 'Dr. Arjun Kumar', 1, 'Cardiologist', 185000, '2018-04-12', '9876500011', 'Active'),
(102, 'Dr. Priya Sharma', 1, 'Interventional Cardiologist', 165000, '2019-06-20', '9876500012', 'Active'),
(103, 'Dr. Ravi Menon', 1, 'Cardiologist', 145000, '2020-02-15', '9876500013', 'Active'),
(104, 'Dr. Meena Krishnan', 2, 'Neurologist', 175000, '2017-08-10', '9876500014', 'Active'),
(105, 'Dr. Karthik Raj', 2, 'Neurosurgeon', 210000, '2016-01-25', '9876500015', 'Active'),
(106, 'Dr. Divya Rao', 2, 'Neurologist', 135000, '2021-03-18', '9876500016', 'Active'),
(107, 'Dr. Suresh Babu', 3, 'Orthopedic Surgeon', 155000, '2018-11-05', '9876500017', 'Active'),
(108, 'Dr. Anitha Devi', 3, 'Orthopedic Specialist', 125000, '2020-07-12', '9876500018', 'Active'),
(109, 'Dr. Mohan Das', 3, 'Joint Replacement', 140000, '2019-09-01', '9876500019', 'Active'),
(110, 'Dr. Lakshmi Priya', 4, 'Pediatrician', 110000, '2021-06-15', '9876500020', 'Active'),
(111, 'Dr. Sanjay Kumar', 4, 'Pediatrician', 95000, '2022-02-10', '9876500021', 'Active'),
(112, 'Dr. Naveen Joseph', 5, 'Oncologist', 225000, '2015-05-20', '9876500022', 'Active'),
(113, 'Dr. Swetha Reddy', 5, 'Oncologist', 190000, '2018-12-11', '9876500023', 'Active'),
(114, 'Dr. Bala Murugan', 6, 'General Physician', 85000, '2022-04-18', '9876500024', 'Active'),
(115, 'Dr. Rekha Nair', 6, 'General Physician', 90000, '2021-10-05', '9876500025', 'Active'),
(116, 'Dr. Vinoth Kumar', 6, 'General Physician', 78000, '2023-01-15', '9876500026', 'Active'),
(117, 'Dr. Harish Anand', 7, 'Dermatologist', 120000, '2019-03-22', '9876500027', 'Active'),
(118, 'Dr. Pooja Iyer', 7, 'Dermatologist', 105000, '2020-08-14', '9876500028', 'Active'),
(119, 'Dr. Ashok Kumar', 8, 'ENT Specialist', 100000, '2019-11-19', '9876500029', 'Active'),
(120, 'Dr. Farhan Ali', 9, 'Emergency Physician', 130000, '2018-01-12', '9876500030', 'Active'),
(121, 'Dr. Joseph Mathew', 9, 'Emergency Physician', 115000, '2020-05-10', '9876500031', 'Active'),
(122, 'Dr. Deepa Menon', 10, 'Radiologist', 140000, '2017-09-09', '9876500032', 'Active'),
(123, 'Dr. Rahul Verma', 1, 'Cardiologist', 150000, '2021-04-20', '9876500033', 'Active'),
(124, 'Dr. Neha Kapoor', 3, 'Orthopedic Surgeon', 135000, '2022-01-17', '9876500034', 'Active'),
(125, 'Dr. Vikram Singh', 5, 'Oncologist', 200000, '2016-06-22', '9876500035', 'Active'),
(126, 'Dr. Asha Thomas', 2, 'Neurologist', 155000, '2020-10-13', '9876500036', 'Active'),
(127, 'Dr. Imran Khan', 6, 'General Physician', 82000, '2023-03-10', '9876500037', 'Active'),
(128, 'Dr. Kavya Nair', 7, 'Dermatologist', 98000, '2023-07-15', '9876500038', 'Active'),
(129, 'Dr. Manoj Pillai', 9, 'Emergency Physician', 108000, '2022-11-21', '9876500039', 'Active'),
(130, 'Dr. Sneha Rao', 4, 'Pediatrician', 102000, '2023-02-01', '9876500040', 'Active');
select * from mdoctors;

CREATE TABLE mpatients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100),
    gender VARCHAR(10),
    date_of_birth DATE,
    phone VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(50),
    registration_date DATE,
    blood_group VARCHAR(5),
    status VARCHAR(20));
INSERT INTO mpatients VALUES
(1001, 'Ramesh Kumar', 'Male', '1985-05-12', '9000000001', 'ramesh@gmail.com', 'Chennai', '2024-01-10', 'O+', 'Active'),
(1002, 'Priya Raj', 'Female', '1990-08-22', '9000000002', 'priya@gmail.com', 'Chennai', '2024-02-15', 'A+', 'Active'),
(1003, 'Arun Kumar', 'Male', '1975-03-18', '9000000003', 'arun@gmail.com', 'Pondicherry', '2024-03-05', 'B+', 'Active'),
(1004, 'Lakshmi Devi', 'Female', '1968-11-30', '9000000004', 'lakshmi@gmail.com', 'Chennai', '2024-03-20', 'O-', 'Active'),
(1005, 'Suresh Babu', 'Male', '1995-01-15', '9000000005', 'suresh@gmail.com', 'Bangalore', '2024-04-01', 'AB+', 'Active'),
(1006, 'Anitha Raj', 'Female', '1988-07-19', '9000000006', 'anitha@gmail.com', 'Chennai', '2024-04-12', 'A-', 'Active'),
(1007, 'Mohan Das', 'Male', '1960-02-10', '9000000007', 'mohan@gmail.com', 'Madurai', '2024-04-25', 'B+', 'Inactive'),
(1008, 'Divya Sharma', 'Female', '1998-09-05', '9000000008', 'divya@gmail.com', 'Chennai', '2024-05-10', 'O+', 'Active'),
(1009, 'Karthik Raj', 'Male', '1982-12-25', '9000000009', 'karthik@gmail.com', 'Coimbatore', '2024-05-22', 'A+', 'Active'),
(1010, 'Meena Joseph', 'Female', '1972-06-14', '9000000010', 'meena@gmail.com', 'Chennai', '2024-06-01', 'B-', 'Active'),
(1011, 'Vijay Kumar', 'Male', '1992-04-16', NULL, 'vijay@gmail.com', 'Chennai', '2024-06-12', 'O+', 'Active'),
(1012, 'Pooja Nair', 'Female', '1987-10-28', '9000000012', 'pooja@gmail.com', 'Pondicherry', '2024-06-25', 'AB+', 'Active'),
(1013, 'Rahul Das', 'Male', '1955-01-05', '9000000013', 'rahul@gmail.com', 'Chennai', '2024-07-01', 'A+', 'Active'),
(1014, 'Sneha Rao', 'Female', '2000-03-12', '9000000014', 'sneha@gmail.com', 'Bangalore', '2024-07-15', 'O+', 'Active'),
(1015, 'Manoj Kumar', 'Male', '1980-08-08', '9000000015', 'manoj@gmail.com', 'Chennai', '2024-08-01', 'B+', 'Active'),
(1016, 'Deepa Krishnan', 'Female', '1993-02-17', '9000000016', 'deepa@gmail.com', 'Madurai', '2024-08-20', 'A-', 'Active'),
(1017, 'Ashok Raj', 'Male', '1970-09-30', '9000000017', 'ashok@gmail.com', 'Chennai', '2024-09-05', 'O-', 'Inactive'),
(1018, 'Kavya Menon', 'Female', '1996-12-11', '9000000018', 'kavya@gmail.com', 'Chennai', '2024-09-18', 'AB+', 'Active'),
(1019, 'Imran Ali', 'Male', '1985-05-25', '9000000019', 'imran@gmail.com', 'Hyderabad', '2024-10-01', 'B+', 'Active'),
(1020, 'Neha Kapoor', 'Female', '1991-11-14', '9000000020', 'neha@gmail.com', 'Chennai', '2024-10-20', 'A+', 'Active'),
(1021, 'Ravi Shankar', 'Male', '1965-04-02', '9000000021', 'ravi@gmail.com', 'Pondicherry', '2024-11-05', 'O+', 'Active'),
(1022, 'Asha Thomas', 'Female', '1989-06-18', '9000000022', 'asha@gmail.com', 'Chennai', '2024-11-15', 'B+', 'Active'),
(1023, 'Vikram Singh', 'Male', '1978-10-09', '9000000023', 'vikram@gmail.com', 'Bangalore', '2024-12-01', 'AB-', 'Active'),
(1024, 'Nandhini Kumar', 'Female', '1999-01-27', '9000000024', 'nandhini@gmail.com', 'Chennai', '2024-12-15', 'O+', 'Active'),
(1025, 'Senthil Kumar', 'Male', '1950-07-04', '9000000025', 'senthil@gmail.com', 'Chennai', '2025-01-10', 'A+', 'Active'),
(1026, 'Geetha Ravi', 'Female', '1984-05-19', '9000000026', 'geetha@gmail.com', 'Coimbatore', '2025-01-20', 'B+', 'Active'),
(1027, 'Surya Prakash', 'Male', '1994-09-21', '9000000027', 'surya@gmail.com', 'Chennai', '2025-02-05', 'O+', 'Active'),
(1028, 'Meera Das', 'Female', '1979-03-13', '9000000028', 'meera@gmail.com', 'Madurai', '2025-02-20', 'A-', 'Active'),
(1029, 'Hari Kumar', 'Male', '1986-12-01', '9000000029', 'hari@gmail.com', 'Chennai', '2025-03-01', 'B+', 'Active'),
(1030, 'Swetha Raj', 'Female', '1997-07-07', '9000000030', 'swetha@gmail.com', 'Pondicherry', '2025-03-15', 'O+', 'Active');
select * from mpatients;

CREATE TABLE mappointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_type VARCHAR(30),
    status VARCHAR(20),
    consultation_fee NUMERIC(10,2),
    FOREIGN KEY (patient_id) REFERENCES mpatients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES mdoctors(doctor_id));

INSERT INTO mappointments VALUES
(1,1001,101,'2025-01-05','Consultation','Completed',1500),
(2,1001,102,'2025-02-10','Follow-up','Completed',1800),
(3,1001,101,'2025-03-15','Follow-up','Completed',1500),
(4,1002,104,'2025-01-08','Consultation','Completed',1600),
(5,1002,104,'2025-02-12','Follow-up','Completed',1600),
(6,1003,107,'2025-01-12','Consultation','Completed',1400),
(7,1003,107,'2025-03-20','Follow-up','Completed',1400),
(8,1004,105,'2025-01-15','Consultation','Completed',2000),
(9,1004,105,'2025-02-18','Follow-up','Completed',2000),
(10,1004,105,'2025-04-10','Follow-up','Completed',2000),
(11,1005,110,'2025-01-20','Consultation','Completed',1000),
(12,1006,112,'2025-01-25','Consultation','Completed',2500),
(13,1006,112,'2025-02-25','Follow-up','Completed',2500),
(14,1008,117,'2025-02-01','Consultation','Completed',1300),
(15,1008,117,'2025-03-01','Follow-up','Completed',1300),
(16,1009,114,'2025-02-05','Consultation','Completed',800),
(17,1009,115,'2025-03-05','Consultation','Completed',900),
(18,1010,103,'2025-02-10','Consultation','Completed',1400),
(19,1011,116,'2025-02-15','Consultation','Completed',800),
(20,1012,118,'2025-02-20','Consultation','Completed',1200),
(21,1013,105,'2025-03-10','Consultation','Completed',2000),
(22,1014,110,'2025-03-15','Consultation','Completed',1000),
(23,1015,101,'2025-03-20','Consultation','Completed',1500),
(24,1016,119,'2025-03-25','Consultation','Completed',1100),
(25,1018,128,'2025-04-01','Consultation','Completed',1200),
(26,1019,120,'2025-04-05','Emergency','Completed',2500),
(27,1020,122,'2025-04-10','Radiology','Completed',1800),
(28,1021,107,'2025-04-15','Consultation','Completed',1400),
(29,1022,113,'2025-04-20','Consultation','Completed',2200),
(30,1023,125,'2025-04-25','Consultation','Completed',2500),
(31,1024,111,'2025-05-01','Consultation','Completed',1000),
(32,1025,114,'2025-05-05','Consultation','Completed',800),
(33,1026,108,'2025-05-10','Consultation','Completed',1200),
(34,1027,115,'2025-05-15','Consultation','Completed',900),
(35,1028,118,'2025-05-20','Consultation','Completed',1200),
(36,1029,129,'2025-05-25','Consultation','Completed',1100),
(37,1030,130,'2025-06-01','Consultation','Completed',1000),
(38,1002,104,'2025-03-12','Follow-up','Completed',1600),
(39,1002,104,'2025-04-12','Follow-up','Completed',1600),
(40,1004,105,'2025-05-15','Follow-up','Completed',2000);
select * from mappointments;

CREATE TABLE mrooms (
    room_id INT PRIMARY KEY,
    room_number VARCHAR(10),
    room_type VARCHAR(30),
    department_id INT,
    daily_charge NUMERIC(10,2),
    status VARCHAR(20),
    FOREIGN KEY (department_id) REFERENCES mdepartments(department_id));

INSERT INTO mrooms VALUES
(1,'A101','General',6,2500,'Available'),
(2,'A102','General',6,2500,'Occupied'),
(3,'B201','ICU',1,8000,'Occupied'),
(4,'B202','ICU',1,8000,'Available'),
(5,'C301','Private',3,5000,'Occupied'),
(6,'C302','Private',3,5000,'Available'),
(7,'D401','Semi-Private',5,4000,'Occupied'),
(8,'D402','Semi-Private',5,4000,'Available'),
(9,'E501','Emergency',9,6000,'Occupied'),
(10,'E502','General',9,3000,'Available');
select * from mrooms;

CREATE TABLE madmissions (
    admission_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    room_id INT,
    admission_date DATE,
    discharge_date DATE,
    admission_type VARCHAR(30),
    total_cost NUMERIC(12,2),
    FOREIGN KEY (patient_id) REFERENCES mpatients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES mdoctors(doctor_id),
    FOREIGN KEY (room_id) REFERENCES mrooms(room_id));

INSERT INTO madmissions VALUES
(1,1001,101,3,'2025-01-10','2025-01-15','Emergency',65000),
(2,1001,101,3,'2025-06-10','2025-06-14','Planned',52000),
(3,1002,104,4,'2025-02-15','2025-02-20','Planned',70000),
(4,1003,107,5,'2025-01-15','2025-01-20','Planned',45000),
(5,1003,107,5,'2025-07-10','2025-07-15','Emergency',60000),
(6,1004,105,3,'2025-02-20','2025-03-01','Emergency',95000),
(7,1006,112,7,'2025-02-01','2025-02-10','Planned',120000),
(8,1010,103,3,'2025-03-05','2025-03-10','Planned',55000),
(9,1013,105,4,'2025-03-12','2025-03-18','Emergency',80000),
(10,1015,101,3,'2025-03-20','2025-03-25','Planned',60000),
(11,1019,120,9,'2025-04-05','2025-04-08','Emergency',40000),
(12,1023,125,7,'2025-04-25','2025-05-05','Planned',150000),
(13,1025,114,1,'2025-05-05','2025-05-08','Planned',30000),
(14,1028,118,5,'2025-05-20','2025-05-25','Planned',42000),
(15,1030,130,2,'2025-06-01','2025-06-04','Emergency',28000);
select * from madmissions;

CREATE TABLE mdiagnoses (
    diagnosis_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    admission_id INT,
    diagnosis_name VARCHAR(100),
    diagnosis_date DATE,
    treatment_cost NUMERIC(10,2),
    FOREIGN KEY (patient_id) REFERENCES mpatients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES mdoctors(doctor_id),
    FOREIGN KEY (admission_id) REFERENCES madmissions(admission_id));

INSERT INTO mdiagnoses VALUES
(1,1001,101,1,'Coronary Artery Disease','2025-01-10',30000),
(2,1001,101,2,'Hypertension','2025-06-10',15000),
(3,1002,104,3,'Migraine','2025-02-15',20000),
(4,1003,107,4,'Fracture','2025-01-15',25000),
(5,1003,107,5,'Knee Injury','2025-07-10',35000),
(6,1004,105,6,'Brain Tumor','2025-02-20',60000),
(7,1006,112,7,'Cancer','2025-02-01',90000),
(8,1010,103,8,'Heart Disease','2025-03-05',30000),
(9,1013,105,9,'Stroke','2025-03-12',50000),
(10,1015,101,10,'Chest Pain','2025-03-20',30000),
(11,1019,120,11,'Accident Injury','2025-04-05',20000),
(12,1023,125,12,'Lung Cancer','2025-04-25',100000),
(13,1025,114,13,'Diabetes','2025-05-05',15000),
(14,1028,118,14,'Skin Infection','2025-05-20',18000),
(15,1030,130,15,'Fever','2025-06-01',12000);
select * from mdiagnoses;

CREATE TABLE mmedicines (
    medicine_id INT PRIMARY KEY,
    medicine_name VARCHAR(100),
    category VARCHAR(50),
    unit_price NUMERIC(10,2),
    stock_quantity INT,
    expiry_date DATE);

INSERT INTO mmedicines VALUES
(1,'Aspirin','Cardiac',50,500,'2027-05-10'),
(2,'Atorvastatin','Cholesterol',80,300,'2027-08-15'),
(3,'Metformin','Diabetes',60,400,'2026-12-20'),
(4,'Paracetamol','Pain Relief',20,1000,'2027-02-10'),
(5,'Amoxicillin','Antibiotic',100,250,'2026-11-15'),
(6,'Pantoprazole','Gastric',40,500,'2027-01-20'),
(7,'Insulin','Diabetes',350,100,'2026-10-01'),
(8,'Cetirizine','Allergy',30,400,'2028-03-15'),
(9,'Ibuprofen','Pain Relief',45,350,'2025-08-01'),
(10,'Azithromycin','Antibiotic',120,200,'2025-07-15');
select * from mmedicines;

CREATE TABLE mprescriptions (
    prescription_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    medicine_id INT,
    prescription_date DATE,
    quantity INT,
    dosage VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES mpatients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES mdoctors(doctor_id),
    FOREIGN KEY (medicine_id) REFERENCES mmedicines(medicine_id));

INSERT INTO mprescriptions VALUES
(1,1001,101,1,'2025-01-10',30,'1 daily'),
(2,1001,101,2,'2025-01-10',30,'1 daily'),
(3,1002,104,4,'2025-02-15',10,'2 daily'),
(4,1003,107,5,'2025-01-15',14,'2 daily'),
(5,1004,105,6,'2025-02-20',20,'1 daily'),
(6,1006,112,4,'2025-02-01',15,'3 daily'),
(7,1010,103,1,'2025-03-05',30,'1 daily'),
(8,1013,105,2,'2025-03-12',30,'1 daily'),
(9,1015,101,1,'2025-03-20',30,'1 daily'),
(10,1025,114,3,'2025-05-05',60,'2 daily'),
(11,1028,118,8,'2025-05-20',20,'1 daily'),
(12,1030,130,4,'2025-06-01',10,'2 daily');
select * from mprescriptions;

CREATE TABLE mLab_Tests (
    test_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    test_name VARCHAR(100),
    test_date DATE,
    result VARCHAR(100),
    test_cost NUMERIC(10,2),
    status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES mpatients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES mdoctors(doctor_id));

INSERT INTO mLab_Tests VALUES
(1,1001,101,'ECG','2025-01-10','Abnormal',1200,'Completed'),
(2,1002,104,'MRI Brain','2025-02-15','Normal',6000,'Completed'),
(3,1003,107,'X-Ray','2025-01-15','Fracture',1500,'Completed'),
(4,1004,105,'CT Scan','2025-02-20','Abnormal',8000,'Completed'),
(5,1006,112,'Biopsy','2025-02-01','Positive',10000,'Completed'),
(6,1010,103,'ECG','2025-03-05','Normal',1200,'Completed'),
(7,1013,105,'MRI Brain','2025-03-12','Abnormal',6000,'Completed'),
(8,1019,120,'X-Ray','2025-04-05','Fracture',1500,'Completed'),
(9,1023,125,'CT Scan','2025-04-25','Abnormal',8000,'Completed'),
(10,1025,114,'Blood Test','2025-05-05','High Sugar',800,'Completed');
select * from mLab_Tests;

CREATE TABLE mpayments (
    payment_id INT PRIMARY KEY,
    patient_id INT,
    appointment_id INT,
    admission_id INT,
    payment_date DATE,
    bill_amount NUMERIC(12,2),
    paid_amount NUMERIC(12,2),
    payment_status VARCHAR(20),
    payment_method VARCHAR(30),
    FOREIGN KEY (patient_id) REFERENCES mpatients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES mappointments(appointment_id),
    FOREIGN KEY (admission_id) REFERENCES madmissions(admission_id));

INSERT INTO mpayments VALUES
(1,1001,1,1,'2025-01-05',1500,1500,'Paid','UPI'),
(2,1001,NULL,1,'2025-01-15',65000,50000,'Partial','Insurance'),
(3,1001,2,NULL,'2025-02-10',1800,1800,'Paid','Card'),
(4,1002,4,3,'2025-01-08',1600,1600,'Paid','Cash'),
(5,1002,NULL,3,'2025-02-20',70000,70000,'Paid','Insurance'),
(6,1003,6,4,'2025-01-12',1400,1000,'Partial','Cash'),
(7,1003,NULL,5,'2025-07-15',60000,0,'Unpaid','-'),
(8,1004,8,6,'2025-01-15',2000,2000,'Paid','Card'),
(9,1004,NULL,6,'2025-03-01',95000,75000,'Partial','Insurance'),
(10,1005,11,NULL,'2025-01-20',1000,1000,'Paid','UPI'),
(11,1006,12,7,'2025-01-25',2500,2500,'Paid','Card'),
(12,1006,NULL,7,'2025-02-10',120000,90000,'Partial','Insurance'),
(13,1008,14,NULL,'2025-02-01',1300,0,'Unpaid','-'),
(14,1010,18,8,'2025-02-10',1400,1400,'Paid','UPI'),
(15,1010,NULL,8,'2025-03-10',55000,55000,'Paid','Insurance'),
(16,1013,21,9,'2025-03-10',2000,2000,'Paid','Card'),
(17,1013,NULL,9,'2025-03-18',80000,60000,'Partial','Insurance'),
(18,1015,23,10,'2025-03-20',1500,1500,'Paid','Cash'),
(19,1015,NULL,10,'2025-03-25',60000,60000,'Paid','Insurance'),
(20,1019,26,11,'2025-04-05',2500,2500,'Paid','Card'),
(21,1019,NULL,11,'2025-04-08',40000,30000,'Partial','Insurance'),
(22,1023,30,12,'2025-04-25',2500,2500,'Paid','UPI'),
(23,1023,NULL,12,'2025-05-05',150000,100000,'Partial','Insurance'),
(24,1025,32,13,'2025-05-05',800,800,'Paid','Cash'),
(25,1025,NULL,13,'2025-05-08',30000,30000,'Paid','Cash'),
(26,1028,35,14,'2025-05-20',1200,1200,'Paid','UPI'),
(27,1028,NULL,14,'2025-05-25',42000,20000,'Partial','Insurance'),
(28,1030,37,15,'2025-06-01',1000,1000,'Paid','Card'),
(29,1030,NULL,15,'2025-06-04',28000,28000,'Paid','Insurance');
select * from mpayments;

CREATE TABLE minsurance (
    insurance_id INT PRIMARY KEY,
    patient_id INT,
    provider_name VARCHAR(100),
    policy_number VARCHAR(50),
    coverage_amount NUMERIC(12,2),
    expiry_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES mpatients(patient_id));

INSERT INTO minsurance VALUES
(1,1001,'Star Health','STAR10001',500000,'2027-12-31','Active'),
(2,1002,'HDFC Ergo','HDFC10002',300000,'2027-10-31','Active'),
(3,1003,'ICICI Lombard','ICICI10003',400000,'2026-12-31','Active'),
(4,1004,'Star Health','STAR10004',500000,'2027-05-31','Active'),
(5,1006,'LIC Health','LIC10006',600000,'2027-08-31','Active'),
(6,1010,'HDFC Ergo','HDFC10010',300000,'2026-11-30','Active'),
(7,1013,'Star Health','STAR10013',400000,'2027-09-30','Active'),
(8,1019,'ICICI Lombard','ICICI10019',250000,'2027-04-30','Active'),
(9,1023,'Star Health','STAR10023',700000,'2027-06-30','Active'),
(10,1028,'HDFC Ergo','HDFC10028',300000,'2026-09-30','Expired');
select * from minsurance;

CREATE TABLE memployees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    designation VARCHAR(50),
    salary NUMERIC(12,2),
    manager_id INT,
    joining_date DATE,
    FOREIGN KEY (department_id) REFERENCES mdepartments(department_id),
    FOREIGN KEY (manager_id) REFERENCES memployees(employee_id));

INSERT INTO memployees VALUES
(201,'Dr. Arjun Kumar',1,'Medical Director',185000,NULL,'2018-04-12'),
(202,'Dr. Priya Sharma',1,'Senior Doctor',165000,201,'2019-06-20'),
(203,'Dr. Ravi Menon',1,'Doctor',145000,202,'2020-02-15'),
(204,'Dr. Meena Krishnan',2,'Department Head',175000,201,'2017-08-10'),
(205,'Dr. Karthik Raj',2,'Senior Doctor',210000,204,'2016-01-25'),
(206,'Dr. Divya Rao',2,'Doctor',135000,204,'2021-03-18'),
(207,'Dr. Suresh Babu',3,'Department Head',155000,201,'2018-11-05'),
(208,'Dr. Anitha Devi',3,'Doctor',125000,207,'2020-07-12'),
(209,'Admin Manager',NULL,'Administration Manager',95000,201,'2019-01-10'),
(210,'HR Manager',NULL,'HR Manager',85000,209,'2020-05-15'),
(211,'HR Executive',NULL,'HR Executive',55000,210,'2022-06-10'),
(212,'Finance Manager',NULL,'Finance Manager',100000,209,'2018-08-20'),
(213,'Finance Executive',NULL,'Finance Executive',60000,212,'2023-01-10');
select *from memployees;

CREATE TABLE mDoctor_Performance (
    performance_id INT PRIMARY KEY,
    doctor_id INT,
    performance_month DATE,
    patients_treated INT,
    successful_treatments INT,
    patient_rating NUMERIC(3,2),
    revenue_generated NUMERIC(12,2),
    FOREIGN KEY (doctor_id) REFERENCES mdoctors(doctor_id));

INSERT INTO mDoctor_Performance VALUES
(1,101,'2025-01-01',85,80,4.8,250000),
(2,102,'2025-01-01',72,68,4.6,210000),
(3,103,'2025-01-01',55,50,4.5,150000),
(4,104,'2025-01-01',90,85,4.9,280000),
(5,105,'2025-01-01',120,115,4.9,420000),
(6,106,'2025-01-01',45,42,4.3,120000),
(7,107,'2025-01-01',95,90,4.7,300000),
(8,108,'2025-01-01',60,57,4.5,180000),
(9,109,'2025-01-01',70,65,4.6,220000),
(10,110,'2025-01-01',80,75,4.8,190000),
(11,112,'2025-01-01',110,105,4.9,500000),
(12,113,'2025-01-01',75,70,4.7,320000),
(13,114,'2025-01-01',65,60,4.4,140000),
(14,115,'2025-01-01',58,54,4.3,130000),
(15,117,'2025-01-01',68,64,4.6,170000),
(16,118,'2025-01-01',62,58,4.5,155000),
(17,120,'2025-01-01',100,95,4.8,350000),
(18,121,'2025-01-01',88,82,4.7,300000),
(19,122,'2025-01-01',70,67,4.6,260000),
(20,125,'2025-01-01',105,100,4.9,480000);
select * from mDoctor_Performance;

CREATE TABLE mPatient_Analytics (
    analytics_id INT PRIMARY KEY,
    patient_id INT,
    total_appointments INT,
    total_admissions INT,
    total_spending NUMERIC(12,2),
    last_visit_date DATE,
    risk_level VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES mpatients(patient_id));

INSERT INTO mPatient_Analytics VALUES
(1,1001,3,2,118300,'2025-06-14','High'),
(2,1002,4,1,71600,'2025-04-12','Medium'),
(3,1003,2,2,66800,'2025-07-15','High'),
(4,1004,3,1,99000,'2025-03-01','High'),
(5,1005,1,0,1000,'2025-01-20','Low'),
(6,1006,2,1,125000,'2025-02-10','High'),
(7,1008,2,0,2600,'2025-03-01','Low'),
(8,1010,1,1,56400,'2025-03-10','Medium'),
(9,1013,1,1,82000,'2025-03-18','High'),
(10,1015,1,1,61500,'2025-03-25','Medium'),
(11,1019,1,1,42500,'2025-04-08','Medium'),
(12,1023,1,1,152500,'2025-05-05','High'),
(13,1025,1,1,30800,'2025-05-08','Medium'),
(14,1028,1,1,43200,'2025-05-25','Medium'),
(15,1030,1,1,29000,'2025-06-04','Low');
select * from mPatient_Analytics;

CREATE TABLE mRevenue_Analytics (
    revenue_id INT PRIMARY KEY,
    revenue_date DATE,
    department_id INT,
    revenue_source VARCHAR(50),
    amount NUMERIC(12,2),
    FOREIGN KEY (department_id) REFERENCES mdepartments(department_id));

INSERT INTO mRevenue_Analytics VALUES
(1,'2025-01-05',1,'Consultation',150000),
(2,'2025-01-15',2,'Admission',220000),
(3,'2025-01-25',3,'Surgery',180000),
(4,'2025-02-05',1,'Consultation',190000),
(5,'2025-02-15',5,'Cancer Treatment',450000),
(6,'2025-02-25',2,'Admission',250000),

(7,'2025-03-05',1,'Cardiology',300000),
(8,'2025-03-15',2,'Neurology',350000),
(9,'2025-03-25',3,'Orthopedics',280000),
(10,'2025-04-05',9,'Emergency',400000),
(11,'2025-04-15',5,'Oncology',550000),
(12,'2025-04-25',10,'Radiology',250000),
(13,'2025-05-05',6,'General Medicine',180000),
(14,'2025-05-15',5,'Oncology',600000),
(15,'2025-05-25',3,'Orthopedics',320000),
(16,'2025-06-01',1,'Cardiology',350000),
(17,'2025-06-10',2,'Neurology',300000),
(18,'2025-06-20',9,'Emergency',420000),
(19,'2025-07-05',5,'Oncology',650000),
(20,'2025-07-15',3,'Orthopedics',350000),
(21,'2025-07-25',1,'Cardiology',380000);
select * from mRevenue_Analytics;

select d.doctor_id, d.doctor_name,count(a.appointment_id) as count_s from mdoctors d join mappointments a
on d.doctor_id=a.doctor_id group by d.doctor_id, d.doctor_name having count(a.appointment_id)>
(select count(appointment_id)/count(distinct doctor_id) from mappointments) order by count_s;
select d.department_name,avg(doc.salary) from mdepartments d join mdoctors doc
on d.department_id = doc.department_id group by d.department_id having avg(doc.salary)>(
select avg(salary) from mdoctors) order by avg(doc.salary);
select patient_id from mpatients except select patient_id from mappointments;
select date_trunc('month', revenue_date),sum(amount) from mRevenue_Analytics
group by date_trunc('month', revenue_date) order by sum(amount) ;
select d.doctor_id,d.doctor_name, sum(a.consultation_fee) as total from mdoctors d join mappointments a
on d.doctor_id=a.doctor_id group by d.doctor_id,d.doctor_name order by total;
select p.patient_id,p.patient_name,count(a.appointment_id) from mpatients p join mappointments a
on p.patient_id=a.patient_id group by p.patient_id,p.patient_name having count(a.appointment_id)>1;
select doctor_name, salary from mdoctors order by salary desc offset 1 limit 1;
select d.department_name,count(a.patient_id) from mdepartments d join mdoctors doc
on d.department_id =doc.department_id
join mappointments a on doc.doctor_id=a.doctor_id group by d.department_name order by count(a.patient_id)
desc limit 1;
select p.patient_id,p.patient_name,py.payment_status from mpatients p join mpayments py
on p.patient_id=py.patient_id where py.payment_status ='Unpaid';
select d.department_name,avg(di.treatment_cost) as avg_cost from mdepartments d join mdoctors
doc on d.department_id=doc.department_id join mdiagnoses di on di.doctor_id=doc.doctor_id 
group by d.department_name order by avg_cost;
select doctor_id, doctor_name, salary from mdoctors order by salary desc limit 1;
select doctor_id, doctor_name, salary from mdoctors order by salary desc offset 1 limit 1;
select doctor_id, doctor_name, salary from mdoctors order by salary desc offset 2 limit 1;
with Top_sal as (select d.department_name, doc.doctor_name,doc.salary, dense_rank() over
(partition by d.department_name order by doc.salary) as RN from mdepartments d join 
mdoctors doc on d.department_id=doc.department_id) select * from Top_sal where RN in 
('1','2','3');
select doctor_id, doctor_name, salary from mdoctors where salary>(select avg(salary) from 
mdoctors) order by salary;
with doc_avg_High as(select d.department_name,doc.doctor_name, doc.salary as sal,avg(doc.salary) over(partition by 
d.department_name)as avg_sal from mdepartments d join mdoctors doc on d.department_id=
doc.department_id) select * from doc_avg_High where sal>avg_sal;
select d.department_name, avg(doc.salary) from mdepartments d join mdoctors doc on
d.department_id=doc.department_id group by d.department_name;
select d.department_name, avg(doc.salary) from mdepartments d join mdoctors doc on
d.department_id=doc.department_id group by d.department_name order by avg(doc.salary) 
desc limit 1;
select doctor_id from mdoctors except select doctor_id from mappointments order by doctor_id;
select doc.doctor_name, count(distinct a.patient_id) from mdoctors doc join mappointments a
on doc.doctor_id=a.doctor_id group by doc.doctor_name order by count(distinct a.patient_id) desc;

select doc.doctor_name, count( a.patient_id) from mdoctors doc join mappointments a
on doc.doctor_id=a.doctor_id group by doc.doctor_name order by count( a.patient_id) desc;
select patient_id from mpatients except select patient_id from mappointments;
select p.patient_id,p.patient_name,count(a.appointment_id) from mpatients p join
mappointments a on p.patient_id=a.patient_id group by p.patient_id,p.patient_name having
count(a.appointment_id) >3;
select p.patient_id,p.patient_name,count(a.admission_id) from mpatients p join madmissions a
on p.patient_id = a.patient_id group by p.patient_id,p.patient_name having count
(a.admission_id) >1;
select patient_name, date_of_birth  from mpatients order by date_of_birth limit 1 ;
select * from mpatients where date_of_birth=(select min(date_of_birth) from mpatients);
select patient_name, city from mpatients where city in 
(select city from mpatients group by city having count(*)>1)order by city;
select patient_name, patient_id from mpatients where patient_id in(select patient_id from 
madmissions intersect select patient_id from mappointments)order by patient_id ;
select patient_name, patient_id from mpatients where patient_id in(select patient_id from 
mappointments except select patient_id from madmissions )order by patient_id ;
select p.patient_id,p.patient_name ,pa.total_spending from mPatient_Analytics pa join mpatients p
on p.patient_id=pa.patient_id order by total_spending desc limit 5;
select d.department_name,count(doc.doctor_id) from mdepartments d join mdoctors doc on
d.department_id=doc.department_id group by d.department_name order by count(doc.doctor_id) desc;
select d.department_name, count(a.patient_id) from mdepartments d join  mdoctors doc
on d.department_id=doc.department_id join mappointments a on a.doctor_id=doc.doctor_id
group by d.department_name order by count(a.patient_id) desc limit 1;
with emps as(select d.department_name,avg(doc.salary) as avg_sal from mdepartments d join mdoctors doc on 
d.department_id=doc.department_id group by d.department_name) select * from emps where avg_sal>
(select avg(salary) from mdoctors);
select r.department_id,d.department_name,sum(r.amount) from mRevenue_Analytics r join
mdepartments d on d.department_id=r.department_id group by r.department_id,d.department_name
order by sum(r.amount) desc limit 1;
select d.department_id,d.department_name, count(doc.doctor_id) from mdepartments d join
mdoctors doc on d.department_id=doc.department_id group by d.department_id,d.department_name
having count(doc.doctor_id) =1;
select d.department_name, count(a.appointment_id) from mdepartments d join mdoctors doc on
d.department_id=doc.department_id join mappointments a on doc.doctor_id=a.doctor_id
group by d.department_name order by count(a.appointment_id);
select sum(amount) as total_revenue from mRevenue_Analytics ;
select date_trunc('month',revenue_date ) as month,sum(amount) as Total from mRevenue_Analytics
group by date_trunc('month',revenue_date ) order by total;
select date_trunc('month',revenue_date ) as month,sum(amount) as Total from mRevenue_Analytics
group by date_trunc('month',revenue_date ) order by total desc limit 1;
select avg(bill_amount) as avg_bil from mpayments;
select * from mpayments where payment_status like'%npaid';
select * from mpayments where bill_amount!=paid_amount;
select doc.doctor_id,doc.doctor_name, count(a.appointment_id) from mdoctors doc join
mappointments a on a.doctor_id=doc.doctor_id group by doc.doctor_id,doc.doctor_name
having count(a.appointment_id)>(select count(appointment_id)/count(distinct doctor_id) 
from mappointments) order by count(a.appointment_id) ;
with emps as (select d.department_name,doc.doctor_name, doc.salary, dense_rank()over(partition by d.department_name
order by doc.salary) as rn from mdoctors doc join mdepartments d on d.department_id=
doc.department_id)select * from emps where rn = 1;
select d.department_name, avg(doc.salary) from mdepartments d join mdoctors doc on
d.department_id=doc.department_id group by d.department_name having avg(doc.salary)>
(select avg(salary) from mdoctors);
select patient_name,date_of_birth ,phone , count(*) from mpatients group by
patient_name,date_of_birth ,phone;
select phone, count(*) from mpatients group by phone;
select doctor_name, salary from mdoctors order by salary desc offset 1 limit 1;
select * from mpatients where status !='Active';
select doctor_name, salary from mdoctors where salary>100000;
select * from mpatients where city='Chennai';
select distinct city from mpatients;
select doctor_name,salary from mdoctors order by salary desc limit 5;
select d.department_name, avg(doc.salary) from mdepartments d join mdoctors doc
on d.department_id=doc.department_id group by d.department_name;
select d.department_name, count(doc.doctor_id) from mdepartments d join mdoctors doc
on d.department_id=doc.department_id group by d.department_name having count(doc.doctor_id)>3;
select doc.doctor_name, count(a.appointment_id) from mdoctors doc join mappointments a on
doc.doctor_id=a.doctor_id group by doc.doctor_name having count(a.appointment_id)=0;
select p.patient_name, count(a.appointment_id) from mpatients p join mappointments a on
p.patient_id=a.patient_id group by p.patient_name having count(a.appointment_id)>3;
select patient_id from mappointments intersect select patient_id from madmissions;
with emps as(select  d.department_name,doc.doctor_name, doc.salary,avg(doc.salary)over(partition by
d.department_name) as d_avg from mdoctors doc join mdepartments d on d.department_id=
doc.department_id)select * from emps where salary > d_avg;
select * from mdoctors order by salary desc offset 1 limit 1;
with emps as (select doc.doctor_name,d.department_name, doc.salary,dense_rank() over(partition
by d.department_id order by doc.salary desc) as Rn from mdoctors doc join mdepartments d on
d.department_id=doc.department_id )select *from emps where Rn in ('1','2','3');
select patient_id from mpatients except select patient_id from mappointments;
select d.department_name,avg(doc.salary) as Avg_sal from mdepartments d join mdoctors doc on
d.department_id=doc.department_id group by d.department_name order by Avg_sal desc limit 1;

select date_trunc('month',revenue_date ) as month, sum(amount), Lag(sum(amount))
over(order by date_trunc('month',revenue_date )),sum(amount) - Lag(sum(amount))
over(order by date_trunc('month',revenue_date )) as Rev_diff from mRevenue_Analytics group by
date_trunc('month',revenue_date) order by Rev_diff ;
select doctor_id, sum(revenue_generated) from mDoctor_Performance  group by doctor_id order by
sum(revenue_generated) desc limit 1;

With recursive emps_h as (select employee_id, employee_name, department_id,designation, salary,
Manager_id from memployees where manager_id is null union all select 
e.employee_id, e.employee_name, e.department_id,e.designation, e.salary,
e.Manager_id from memployees e join emps_h h on e.manager_id=h.employee_id)
select * from emps_h;

create view doc_perform_report as select d.doctor_id,d.doctor_name,d.department_id,
dp.performance_id,dp.patients_treated,dp.successful_treatments, dp.patient_rating,
dp.revenue_generated from mdoctors d join mDoctor_Performance dp on d.doctor_id=
dp.doctor_id;
select* from doc_perform_report;

select d.department_id, d.department_name, doc.doctor_name from mdepartments d left join
mdoctors doc on d.department_id=doc.department_id;
select doc.doctor_name, count(a.appointment_id) from mdoctors doc join mappointments a
on doc.doctor_id=a.doctor_id group by doc.doctor_name;
select* from mpatients where patient_id in(select patient_id from mpatients intersect
select patient_id from mappointments order by patient_id);
select patient_id from mpatients except select patient_id from mappointments order
by patient_id;
select * from mdoctors where salary> any(select salary from mdoctors where department_id=
(select department_id from mdepartments where department_name='Cardiology'));
select * from mdoctors where salary> all (select salary from mdoctors where department_id=
(select department_id from mdepartments where department_name='Cardiology'));
select patient_id from madmissions intersect select patient_id from mappointments;
select patient_id from mappointments except select patient_id from madmissions ;
with avg_sal as (select doctor_name, salary,avg(salary) over() as avg_sala
from mdoctors) select * from avg_sal;
with doc_rank as (select d.department_name, doc.doctor_name,doc.salary,dense_rank()over
(partition by d.department_name order by salary desc) as Rn from mdepartments d 
join mdoctors doc on d.department_id=doc.department_id) select* from doc_rank;
select * from mpatients where phone is null;
select * from mdoctors where salary is null;
select medicine_id, medicine_name , expiry_date  from mmedicines  where
expiry_date < current_date;
select email, count(*) from mpatients group by email;
select sum(amount) from mRevenue_Analytics ;

select date_trunc('month',revenue_date) as month, sum(amount) as total from 
mRevenue_Analytics group by date_trunc('month',revenue_date) order by 
date_trunc('month',revenue_date);

With Run_Sal as(select date_trunc('month',revenue_date) as month, sum(amount) as total from 
mRevenue_Analytics group by date_trunc('month',revenue_date) order by 
date_trunc('month',revenue_date)) select month,sum(total)over(order by month) from Run_Sal;

explain select *from mpatients where phone ='9000000001';
explain analyze select *from mpatients where phone ='9000000001';
create index idx_mpatinets_phone on mpatients(phone);






