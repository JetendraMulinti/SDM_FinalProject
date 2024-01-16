
---- Location
INSERT INTO Location (Location_ID, City_Name, State_Province_Name, Country_Name, Developing_Flag, Wealth_Rank_Number) VALUES 
(1, 'New York', 'New York', 'USA', 'N', 1),
(2, 'Los Angeles', 'California', 'USA', 'N', 2),
(3, 'Chicago', 'Illinois', 'USA', 'N', 3),
(4, 'Houston', 'Texas', 'USA', 'N', 4),
(5, 'Phoenix', 'Arizona', 'USA', 'N', 5),
(6, 'Philadelphia', 'Pennsylvania', 'USA', 'N', 6),
(7, 'San Antonio', 'Texas', 'USA', 'N', 7),
(8, 'San Diego', 'California', 'USA', 'N', 8),
(9, 'Dallas', 'Texas', 'USA', 'N', 9),
(10, 'San Jose', 'California', 'USA', 'N', 10),
(11, 'Austin', 'Texas', 'USA', 'N', 11),
(12, 'Jacksonville', 'Florida', 'USA', 'N', 12),
(13, 'Fort Worth', 'Texas', 'USA', 'N', 13),
(14, 'Columbus', 'Ohio', 'USA', 'N', 14),
(15, 'Charlotte', 'North Carolina', 'USA', 'N', 15),
(16, 'San Francisco', 'California', 'USA', 'N', 16),
(17, 'Indianapolis', 'Indiana', 'USA', 'N', 17),
(18, 'Seattle', 'Washington', 'USA', 'N', 18),
(19, 'Denver', 'Colorado', 'USA', 'N', 19),
(20, 'Washington', 'D.C.', 'USA', 'N', 20);


select * from Location;


--- Disease_Type
INSERT INTO Disease_Type (Disease_Type_Code, Disease_Type_Description, Exclusions_Other_Note_Text) VALUES 
('DTC01', 'Infectious', 'Excludes chronic infections'),
('DTC02', 'Metabolic', 'Excludes inherited metabolic disorders'),
('DTC03', 'Cardiovascular', 'Excludes congenital heart conditions'),
('DTC04', 'Neurological', 'Includes only non-traumatic disorders'),
('DTC05', 'Respiratory', 'Excludes chronic respiratory conditions'),
('DTC06', 'Oncological', 'Only solid tumors included'),
('DTC07', 'Musculoskeletal', 'Excludes bone fractures and injuries'),
('DTC08', 'Psychiatric', 'Excludes neurodevelopmental disorders'),
('DTC09', 'Dermatological', 'Excludes cosmetic and aging-related conditions'),
('DTC10', 'Endocrine', 'Only primary endocrine disorders included');


select * from Disease_Type;

--------- 

--- Race
INSERT INTO Race (Race_Code, Race_Description) VALUES 
('ASI', 'Asian'),
('BLA', 'Black or African American'),
('WHI', 'Americans'),
('HIS', 'Hispanic or Latino'),
('OTH', 'Other');

select * from Race;


--- Disease
INSERT INTO Disease 
(Disease_ID, Disease_Name, Disease_Type_Cd, Intensity_Level_Qty, Source_Disease_Cd, Updated_At) VALUES 
(1, 'Influenza', 'DTC01', 5, NULL, '2022-01-15'), -- No source disease
(2, 'Type 2 Diabetes', 'DTC02', 6, NULL, '2022-02-20'), -- No source disease
(3, 'Coronary Heart Disease', 'DTC03', 8, NULL, '2022-03-25'), -- No source disease
(4, 'Alzheimer’s Disease', 'DTC04', 7, NULL, '2022-04-30'), -- No source disease
(5, 'Asthma', 'DTC05', 4, NULL, '2022-05-05'), -- No source disease
(6, 'Breast Cancer', 'DTC06', 9, NULL, '2022-06-10'), -- No source disease
(7, 'Osteoarthritis', 'DTC07', 3, 12, '2022-07-15'), -- Related to Obesity
(8, 'Depression', 'DTC08', 4, 3, '2022-08-20'), -- Related to Coronary Heart Disease
(9, 'Eczema', 'DTC09', 2, NULL, '2022-09-25'), -- No source disease
(10, 'Hypothyroidism', 'DTC10', 3, NULL, '2022-10-30'), -- No source disease
(11, 'Tuberculosis', 'DTC01', 7, 1, '2022-11-04'), -- Related to Influenza
(12, 'Obesity', 'DTC02', 5, NULL, '2022-12-09'), -- No source disease
(13, 'Stroke', 'DTC03', 9, 3, '2023-01-14'), -- Related to Coronary Heart Disease
(14, 'Parkinson’s Disease', 'DTC04', 6, 4, '2023-02-18'), -- Related to Alzheimer’s
(15, 'COPD', 'DTC05', 7, 5, '2023-03-24'), -- Related to Asthma
(16, 'Lung Cancer', 'DTC06', 10, NULL, '2023-04-29'), -- No source disease
(17, 'Rheumatoid Arthritis', 'DTC07', 4, 12, '2023-05-03'), -- Related to Obesity
(18, 'Bipolar Disorder', 'DTC08', 5, 8, '2023-06-08'), -- Related to Depression
(19, 'Psoriasis', 'DTC09', 3, 9, '2023-07-13'), -- Related to Eczema
(20, 'Hyperthyroidism', 'DTC10', 4, 10, '2023-08-17'); -- Related to Hypothyroidism


select * from Disease;


--- Hospital
INSERT INTO Hospital 
(Hospital_ID, Hospital_Name, Hospital_Type, Location_ID, Capacity, Updated_At) VALUES 
(1, 'General Hospital', 'General', 1, 200, '2022-02-15'),
(2, 'City Health Clinic', 'Clinic', 2, 50, '2022-03-20'),
(3, 'Metro Medical Center', 'Specialist', 3, 150, '2022-05-25'),
(4, 'Riverside Hospital', 'General', 4, 180, '2022-07-30'),
(5, 'Mountain View Medical Center', 'Specialist', 5, 120, '2022-08-15'),
(6, 'Downtown Health Clinic', 'Clinic', 6, 40, '2022-09-10'),
(7, 'Community Hospital', 'General', 7, 210, '2022-11-05'),
(8, 'Suburban Medical Facility', 'Specialist', 8, 160, '2023-01-19'),
(9, 'Eastside Clinic', 'Clinic', 9, 60, '2023-03-23'),
(10, 'Westside Hospital', 'General', 10, 190, '2023-04-28'),
(11, 'Northtown Medical Center', 'Specialist', 11, 140, '2023-06-12'),
(12, 'Southtown Health Clinic', 'Clinic', 12, 55, '2023-07-17'),
(13, 'Lakeside Hospital', 'General', 13, 175, '2023-08-21'),
(14, 'Hilltop Medical Center', 'Specialist', 14, 130, '2023-10-26'),
(15, 'Yasoda Hospital', 'Clinic', 15, 100, '2023-11-30'),
(16, 'KIIMS Hospital', 'Clinic', 14, 150, '2023-10-30'),
(17, 'GJPMP Hospital', 'General', 13, 200, '2023-08-30'),
(18, 'Raindbow Clinic', 'Clinic', 12, 10, '2023-09-30'),
(19, 'Star Clinic', 'Clinic', 15, 45, '2023-10-30'),
(20, 'Sambashiva Rao Clinic', 'Clinic', 15, 45, '2023-11-30');


select * from Hospital;


--- Medicine
INSERT INTO Medicine 
(Medicine_ID, Standard_Industry_Number, Name, Company, Price, Active_Ingredient_Name, Updated_At) VALUES 
(1, 'MED12345', 'Paracetamol', 'Pharma Inc.', 10.00, 'Acetaminophen', '2022-01-10'),
(2, 'MED23456', 'Ibuprofen', 'HealthCorp', 12.50, 'Ibuprofen', '2022-02-12'),
(3, 'MED34567', 'Amoxicillin', 'MediCo', 15.75, 'Amoxicillin', '2022-03-15'),
(4, 'MED45678', 'Metformin', 'BestPharma', 8.00, 'Metformin', '2022-04-18'),
(5, 'MED56789', 'Lisinopril', 'CureWell', 20.00, 'Lisinopril', '2022-05-20'),
(6, 'MED67890', 'Atorvastatin', 'FastHeal', 25.50, 'Atorvastatin', '2022-06-22'),
(7, 'MED78901', 'Levothyroxine', 'HealFast', 18.00, 'Levothyroxine Sodium', '2022-07-24'),
(8, 'MED89012', 'Amlodipine', 'MediFast', 16.50, 'Amlodipine', '2022-08-26'),
(9, 'MED90123', 'Simvastatin', 'PharmaQuick', 22.00, 'Simvastatin', '2022-09-28'),
(10, 'MED01234', 'Omeprazole', 'QuickCure', 19.75, 'Omeprazole', '2022-10-30'),
(11, 'MED13579', 'Azithromycin', 'RapidHeal', 30.00, 'Azithromycin', '2022-11-01'),
(12, 'MED24680', 'Hydrochlorothiazide', 'SpeedyPharma', 11.25, 'Hydrochlorothiazide', '2022-12-03'),
(13, 'MED86420', 'Gabapentin', 'TrustMed', 14.00, 'Gabapentin', '2023-01-05'),
(14, 'MED97531', 'Albuterol', 'CareFast', 17.50, 'Albuterol', '2023-02-07'),
(15, 'MED75318', 'Zolpidem', 'HealRapid', 21.75, 'Zolpidem', '2023-03-10'),
(16, 'MED86429', 'Loratadine', 'FastAid', 13.00, 'Loratadine', '2023-04-12'),
(17, 'MED95137', 'Warfarin', 'QuickHelp', 16.75, 'Warfarin', '2023-05-15'),
(18, 'MED75395', 'Ciprofloxacin', 'AidFast', 12.25, 'Ciprofloxacin', '2023-06-17'),
(19, 'MED85274', 'Pantoprazole', 'RapidCare', 15.00, 'Pantoprazole', '2023-07-19'),
(20, 'MED74185', 'Prednisone', 'MedSpeed', 18.50, 'Prednisone', '2023-08-21');




select * from Medicine;


select * from race;

------- Patient 

INSERT INTO Patient(Patient_id, last_name, first_name, gender, primary_location_id, race_cd,created_at,updated_at) VALUES
('1', 'Chavez', 'Ryan', 'M', 8, 'WHI', '2022-09-12', '2023-01-08'),
('2', 'Banks', 'Jason', 'M', 7, 'BLA', '2021-07-05', '2023-01-04'),
('3', 'Ramirez', 'Devon', 'M', 15, 'OTH', '2022-07-01', '2023-01-11'),
('4', 'Pacheco', 'Kathleen', 'M', 5, 'HIS', '2022-11-18', '2023-01-07'),
('5', 'Jacobs', 'Heather', 'M', 9, 'ASI', '2021-03-02', '2023-01-06'),
('6', 'Olson', 'Gina', 'M', 8, 'OTH', '2022-02-22', '2023-01-02'),
('7', 'Sanders', 'Brandon', 'M', 3, 'BLA', '2021-06-03', '2023-01-01'),
('8', 'Alexander', 'Karen', 'F', 10, 'HIS', '2021-01-17', '2023-01-02'),
('9', 'Cole', 'Ronald', 'F', 16, 'ASI', '2021-01-27', '2023-01-11'),
('10', 'Hughes', 'Earl', 'M', 13, 'HIS', '2022-07-17', '2023-01-11'),
('11', 'Anderson', 'Dana', 'F', 5, 'BLA', '2021-04-09', '2023-01-07'),
('12', 'Weaver', 'Amanda', 'M', 3, 'WHI', '2022-09-14', '2023-01-01'),
('13', 'Shelton', 'Paula', 'M', 17, 'HIS', '2022-09-20', '2023-01-02'),
('14', 'Jordan', 'Gabriel', 'M', 18, 'WHI', '2021-10-24', '2023-01-04'),
('15', 'Hoffman', 'James', 'F', 14, 'ASI', '2022-12-04', '2023-01-08'),
('16', 'Mcclain', 'Robert', 'F', 6, 'ASI', '2021-10-28', '2023-01-06'),
('17', 'Rios', 'Tina', 'F', 11, 'OTH', '2022-10-07', '2023-01-11'),
('18', 'Burton', 'Nicholas', 'F', 6, 'OTH', '2022-12-23', '2023-01-04'),
('19', 'Murphy', 'Tina', 'F', 1, 'BLA', '2021-01-20', '2023-01-04'),
('20', 'White', 'Jason', 'M', 5, 'BLA', '2022-12-23', '2023-01-10'),
('21', 'Manning', 'Dawn', 'F', 13, 'BLA', '2021-08-04', '2023-01-06'),
('22', 'Maldonado', 'Heidi', 'M', 6, 'WHI', '2022-08-14', '2023-01-09'),
('23', 'Collier', 'Nicole', 'F', 15, 'WHI', '2021-11-21', '2023-01-08'),
('24', 'Walker', 'Reginald', 'M', 13, 'WHI', '2022-05-08', '2023-01-07'),
('25', 'Skinner', 'Sheila', 'M', 5, 'WHI', '2022-07-20', '2023-01-08'),
('26', 'Mccullough', 'Ricky', 'M', 8, 'BLA', '2022-10-25', '2023-01-11'),
('27', 'Hines', 'Robert', 'M', 15, 'HIS', '2021-09-21', '2023-01-03'),
('28', 'Meadows', 'Steven', 'F', 9, 'OTH', '2021-03-24', '2023-01-04'),
('29', 'Jones', 'John', 'M', 6, 'WHI', '2021-09-12', '2023-01-04'),
('30', 'Lee', 'Jennifer', 'M', 15, 'ASI', '2021-02-04', '2023-01-02'),
('31', 'Taylor', 'Patricia', 'F', 4, 'WHI', '2022-11-22', '2023-01-03'),
('32', 'Harrell', 'Thomas', 'M', 15, 'OTH', '2021-12-16', '2023-01-10'),
('33', 'Burns', 'Nicholas', 'F', 16, 'HIS', '2021-09-25', '2023-01-07'),
('34', 'Rodriguez', 'Ronald', 'F', 2, 'HIS', '2021-02-03', '2023-01-02'),
('35', 'Mata', 'Jay', 'M', 19, 'BLA', '2021-11-05', '2023-01-08'),
('36', 'Schmidt', 'Edward', 'M', 5, 'OTH', '2021-10-02', '2023-01-09'),
('37', 'Ramsey', 'Sherry', 'F', 16, 'OTH', '2021-01-14', '2023-01-09'),
('38', 'Dunn', 'Gregory', 'F', 12, 'OTH', '2021-04-03', '2023-01-05'),
('39', 'Thompson', 'Rebecca', 'F', 2, 'BLA', '2022-07-13', '2023-01-05'),
('40', 'Owens', 'Micheal', 'M', 16, 'HIS', '2021-10-04', '2023-01-08'),
('41', 'Morgan', 'Garrett', 'M', 3, 'ASI', '2021-10-10', '2023-01-11'),
('42', 'Hernandez', 'Matthew', 'M', 7, 'BLA', '2021-11-03', '2023-01-02'),
('43', 'Rivera', 'Kathleen', 'F', 5, 'ASI', '2022-02-23', '2023-01-01'),
('44', 'Hensley', 'Caleb', 'F', 11, 'OTH', '2021-07-15', '2023-01-07'),
('45', 'Oliver', 'Trevor', 'F', 2, 'WHI', '2021-10-15', '2023-01-02'),
('46', 'Powell', 'Justin', 'M', 4, 'ASI', '2021-07-27', '2023-01-04'),
('47', 'Taylor', 'Charles', 'F', 3, 'WHI', '2021-12-23', '2023-01-04'),
('48', 'Adams', 'Jared', 'M', 5, 'HIS', '2022-03-13', '2023-01-07'),
('49', 'Anderson', 'Tiffany', 'M', 15, 'ASI', '2021-02-12', '2023-01-02'),
('50', 'Wood', 'Clifford', 'F', 10, 'BLA', '2021-01-03', '2023-01-08');

select * from Patient;

---- Diseased_Patient
INSERT INTO Diseased_Patient 
(Patient_ID, Disease_ID, Severity_Value, Start_Date, End_Date, Treatment_Cost, Number_of_Visits, Treatment_Compliance, Hospital_Id) VALUES 
(1, 10, 5, '2021-01-10', '2021-01-20', 200.00, 2, 100, 1),
(2, 8, 3, '2021-02-15', '2021-02-15', 150.00, 1, 100, 2),
(3, 6, 7, '2021-03-12', '2021-03-20', 300.00, 3, 90, 3),
(4, 5, 4, '2021-04-05', '2021-04-09', 250.00, 2, 85, 4),
(5, 7, 6, '2021-05-20', '2021-05-25', 350.00, 3, 95, 5),
(6, 7, 2, '2021-06-15', '2021-06-25', 100.00, 1, 80, 6),
(7, 6, 8, '2021-07-10', '2021-07-30', 400.00, 4, 100, 7),
(8, 9, 5, '2021-08-15', '2021-08-20', 200.00, 2, 90, 8),
(9, 8, 4, '2021-09-01', '2021-09-10', 180.00, 2, 85, 9),
(10, 1, 7, '2021-10-12', '2021-10-18', 350.00, 3, 95, 10),
(11, 1, 3, '2021-11-15', '2021-11-15', 150.00, 1, 80, 11),
(12, 2, 6, '2021-12-10', '2021-12-15', 220.00, 2, 100, 12),
(13, 12, 5, '2022-01-12', '2022-01-20', 210.00, 2, 90, 13),
(14, 13, 7, '2022-02-15', '2022-02-21', 360.00, 3, 85, 14),
(15, 14, 4, '2022-03-01', '2022-03-06', 175.00, 2, 95, 15),
(16, 15, 6, '2022-04-20', '2022-04-28', 280.00, 3, 80, 1),
(17, 16, 3, '2022-05-15', '2022-05-15', 130.00, 1, 100, 2),
(18, 17, 7, '2022-06-18', '2022-06-28', 390.00, 4, 90, 3),
(19, 18, 4, '2022-07-12', '2022-07-20', 190.00, 2, 85, 4),
(20, 19, 6, '2022-08-16', '2022-08-20', 260.00, 3, 95, 5),
(21, 5, 4, '2021-09-10', '2021-09-18', 180.00, 2, 85, 6),
(22, 6, 6, '2021-10-15', '2021-10-20', 360.00, 3, 90, 7),
(23, 7, 3, '2021-11-12', '2021-11-12', 140.00, 1, 80, 8),
(24, 8, 5, '2021-12-05', '2021-12-09', 220.00, 2, 95, 9),
(25, 1, 7, '2022-01-20', '2022-01-30', 400.00, 4, 100, 10),
(26, 2, 2, '2022-02-15', '2022-02-15', 120.00, 1, 75, 11),
(27, 3, 8, '2022-03-10', '2022-03-19', 450.00, 4, 90, 12),
(28, 4, 4, '2022-04-15', '2022-04-20', 200.00, 2, 85, 13),
(29, 9, 7, '2022-05-01', '2022-05-08', 380.00, 3, 95, 14),
(30, 10, 5, '2022-06-12', '2022-06-15', 250.00, 2, 90, 15),
(31, 11, 6, '2022-07-15', '2022-07-20', 320.00, 3, 88, 1),
(32, 12, 4, '2022-08-10', '2022-08-17', 170.00, 2, 80, 2),
(33, 13, 3, '2022-09-12', '2022-09-12', 150.00, 1, 77, 3),
(34, 14, 7, '2022-10-15', '2022-10-19', 390.00, 4, 93, 4),
(35, 15, 5, '2022-11-01', '2022-11-10', 210.00, 2, 89, 5),
(36, 16, 6, '2022-12-20', '2022-12-27', 310.00, 3, 90, 6),
(37, 17, 4, '2023-01-15', '2023-01-20', 180.00, 2, 82, 7),
(38, 18, 3, '2023-02-18', '2023-02-23', 130.00, 1, 78, 8),
(39, 19, 7, '2023-03-12', '2023-03-19', 370.00, 4, 91, 9),
(40, 20, 5, '2023-04-16', '2023-04-20', 240.00, 2, 86, 10),
(41, 1, 2, '2023-05-10', '2023-05-10', 110.00, 1, 74, 11),
(42, 2, 8, '2023-06-15', '2023-06-20', 460.00, 4, 92, 12),
(43, 3, 4, '2023-07-10', '2023-07-16', 190.00, 2, 81, 13),
(44, 4, 6, '2023-08-15', '2023-08-20', 330.00, 3, 87, 14),
(45, 5, 3, '2023-09-01', '2023-09-01', 160.00, 1, 79, 15),
(46, 6, 7, '2023-10-12', '2023-10-19', 380.00, 4, 94, 1),
(47, 7, 5, '2023-11-15', '2023-11-23', 350.00, 5, 90, 2),
(48, 8, 6, '2023-11-10', '2023-11-25', 300.00, 8, 78, 3),
(49, 9, 4, '2023-01-12', '2023-01-25', 150.00, 9, 80, 4),
(50, 10, 3, '2023-02-15', '2023-02-15', 200.00, 1, 90, 5);

/*
INSERT INTO Diseased_Patient 
(Patient_ID, Disease_ID, Severity_Value, Start_Date, End_Date, Treatment_Cost, Number_of_Visits, Treatment_Compliance, Hospital_Id) VALUES 
(1, 11, 5, '2021-01-10', '2021-01-20', 200.00, 2, 100, 1);
*/

select * from Diseased_Patient;

--- Indication
INSERT INTO Indication (Medicine_ID, Disease_ID, Indication_Date, Effectiveness_Percent) VALUES 
(1, 1, '2021-01-01', 80.0),
(2, 2, '2021-02-01', 75.0),
(3, 3, '2021-03-01', 85.0),
(4, 4, '2021-04-01', 90.0),
(5, 5, '2021-05-01', 70.0),
(6, 6, '2021-06-01', 65.0),
(7, 7, '2021-07-01', 88.0),
(8, 8, '2021-08-01', 92.0),
(9, 9, '2021-09-01', 60.0),
(10, 10, '2021-10-01', 77.0),
(1, 11, '2021-11-01', 80.0),
(2, 12, '2021-12-01', 75.0),
(3, 13, '2022-01-01', 85.0),
(4, 14, '2022-02-01', 90.0),
(5, 15, '2022-03-01', 70.0),
(6, 16, '2022-04-01', 65.0),
(7, 17, '2022-05-01', 88.0),
(8, 18, '2022-06-01', 92.0),
(9, 19, '2022-07-01', 60.0),
(10, 20, '2022-08-01', 77.0);

select * from Indication;


----- PatientHospital
INSERT INTO PatientHospital (Patient_ID, Hospital_ID, Admission_Date, Discharge_Date, Reason) VALUES
(1, 1, '2021-01-01', '2021-01-05', 'Routine Checkup'),
(2, 2, '2021-02-05', '2021-02-13', 'Surgery'),
(3, 3, '2021-03-10', '2021-03-18', 'Surgery'),
(4, 4, '2021-04-15', '2021-04-18', 'Routine Checkup'),
(5, 5, '2021-05-20', '2021-05-25', 'Therapy'),
(6, 1, '2021-06-01', '2021-06-11', 'Surgery'),
(7, 2, '2021-07-05', '2021-07-12', 'Routine Checkup'),
(8, 3, '2021-08-10', '2021-08-19', 'Consulting'),
(9, 4, '2021-09-15', '2021-09-22', 'Surgery'),
(10, 5, '2021-10-20', '2021-10-28', 'Routine Checkup'),
(11, 1, '2021-11-01', '2021-11-04', 'Therapy'),
(12, 2, '2021-12-05', '2021-12-15', 'Surgery'),
(13, 3, '2022-01-10', '2022-01-17', 'Routine Checkup'),
(14, 4, '2022-02-15', '2022-02-23', 'Consulting'),
(15, 5, '2022-03-20', '2022-03-29', 'Surgery'),
(16, 1, '2022-04-01', '2022-04-10', 'Routine Checkup'),
(17, 2, '2022-05-05', '2022-05-08', 'Therapy'),
(18, 3, '2022-06-10', '2022-06-17', 'Surgery'),
(19, 4, '2022-07-15', '2022-07-22', 'Routine Checkup'),
(20, 5, '2022-08-20', '2022-08-30', 'Consulting'),
(21, 6, '2021-09-10', '2021-09-17', 'Consulting'),
(22, 7, '2021-10-15', '2021-10-23', 'Therapy'),
(23, 8, '2021-11-12', '2021-11-19', 'Routine Checkup'),
(24, 9, '2021-12-05', '2021-12-12', 'Consulting'),
(25, 10, '2022-01-20', '2022-01-29', 'Surgery'),
(26, 11, '2022-02-15', '2022-02-24', 'Routine Checkup'),
(27, 12, '2022-03-10', '2022-03-19', 'Surgery'),
(28, 13, '2022-04-15', '2022-04-23', 'Consulting'),
(29, 14, '2022-05-01', '2022-05-09', 'Surgery'),
(30, 15, '2022-06-12', '2022-06-20', 'Therapy'),
(31, 1, '2022-07-15', '2022-07-25', 'Consulting'),
(32, 2, '2022-08-10', '2022-08-17', 'Routine Checkup'),
(33, 3, '2022-09-12', '2022-09-21', 'Therapy'),
(34, 4, '2022-10-15', '2022-10-25', 'Surgery'),
(35, 5, '2022-11-01', '2022-11-09', 'Consulting'),
(36, 6, '2022-12-20', '2022-12-29', 'Routine Checkup'),
(37, 7, '2023-01-15', '2023-01-24', 'Therapy'),
(38, 8, '2023-02-18', '2023-02-26', 'Routine Checkup'),
(39, 9, '2023-03-12', '2023-03-21', 'Surgery'),
(40, 10, '2023-04-16', '2023-04-24', 'Consulting'),
(41, 11, '2023-05-10', '2023-05-17', 'Routine Checkup'),
(42, 12, '2023-06-15', '2023-06-25', 'Surgery'),
(43, 13, '2023-07-10', '2023-07-18', 'Therapy'),
(44, 14, '2023-08-15', '2023-08-24', 'Routine Checkup'),
(45, 15, '2023-09-01', '2023-09-10', 'Consulting'),
(46, 1, '2023-10-12', '2023-10-21', 'Surgery'),
(47, 2, '2023-11-15', '2023-11-22', 'Therapy'),
(48, 3, '2023-11-10', '2023-11-20', 'Routine Checkup'),
(49, 4, '2023-01-12', '2023-01-21', 'Consulting'),
(50, 5, '2023-02-15', '2023-02-25', 'Routine Checkup');

select * from PatientHospital;


select * from race;

---- Race_Disease_Propensity
INSERT INTO Race_Disease_Propensity (Race_Code, Disease_ID, Propensity_Value) VALUES 
('ASI', 1, 60),
('BLA', 2, 70),
('HIS', 3, 50),
('HIS', 4, 65),
('WHI', 5, 55),
('OTH', 6, 60),
('OTH', 7, 70),
('ASI', 8, 75),
('BLA', 9, 80),
('HIS', 10, 85),
('HIS', 11, 45),
('OTH', 12, 50),
('ASI', 13, 55),
('OTH', 14, 60),
('ASI', 15, 65),
('BLA', 16, 70),
('OTH', 17, 75),
('HIS', 18, 80),
('OTH', 19, 85),
('ASI', 20, 90);

select * from Race_Disease_Propensity;

