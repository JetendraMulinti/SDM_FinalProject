DROP TABLE IF EXISTS PatientHospital;
DROP TABLE IF EXISTS Diseased_Patient;
DROP TABLE IF EXISTS Indication;
DROP TABLE IF EXISTS Race_Disease_Propensity;
DROP TABLE IF EXISTS Medicine;
DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Hospital;
DROP TABLE IF EXISTS Location;
DROP VIEW IF EXISTS view_sourcedisease_summary;
DROP TABLE IF EXISTS Disease;
DROP TABLE IF EXISTS Disease_Type;
DROP TABLE IF EXISTS Race;




-- Creating Location Table
CREATE TABLE Location (
    Location_ID SERIAL PRIMARY KEY,
    City_Name VARCHAR(100),
    State_Province_Name VARCHAR(100),
    Country_Name VARCHAR(100),
    Developing_Flag CHAR(1),
    Wealth_Rank_Number INT
);

-- Creating Disease Type Table
CREATE TABLE Disease_Type (
    Disease_Type_Code CHAR(5) PRIMARY KEY,
    Disease_Type_Description VARCHAR(255),
    Exclusions_Other_Note_Text VARCHAR(255)
);

-- Creating Race Table
CREATE TABLE Race (
    Race_Code CHAR(3) PRIMARY KEY,
    Race_Description VARCHAR(255)
);

-- Creating Hospital Table
CREATE TABLE Hospital (
    Hospital_ID SERIAL PRIMARY KEY,
    Hospital_Name VARCHAR(255) NOT NULL,
    Location_ID INT REFERENCES Location(Location_ID) ON UPDATE CASCADE ON DELETE SET NULL,
    Hospital_Type VARCHAR(50),
    Capacity INT,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Updated_At TIMESTAMP
);

-- Creating Patient Table
CREATE TABLE Patient (
    Patient_ID SERIAL PRIMARY KEY,
    Last_Name VARCHAR(100),
    First_Name VARCHAR(100),
    Gender CHAR(1),
    Primary_Location_ID INT REFERENCES Location(Location_ID) ON UPDATE CASCADE ON DELETE SET NULL,
    Race_CD CHAR(3) REFERENCES Race(Race_Code) ON UPDATE CASCADE ON DELETE SET NULL,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Updated_At TIMESTAMP
);

-- Creating Disease Table
CREATE TABLE Disease (
    Disease_ID INT PRIMARY KEY,
    Disease_Name VARCHAR(255) NOT NULL,
    Intensity_Level_Qty INT CHECK (Intensity_Level_Qty BETWEEN 1 AND 10),
    Disease_Type_Cd CHAR(5) REFERENCES Disease_Type(Disease_Type_Code) ON UPDATE CASCADE ON DELETE SET NULL,
    Source_Disease_Cd INT REFERENCES Disease(Disease_ID) ON UPDATE CASCADE ON DELETE SET NULL,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Updated_At TIMESTAMP
);

-- Creating Medicine Table
CREATE TABLE Medicine (
    Medicine_ID SERIAL PRIMARY KEY,
    Standard_Industry_Number VARCHAR(20),
    Name VARCHAR(255) NOT NULL,
    Company VARCHAR(255),
    Active_Ingredient_Name VARCHAR(255),
    Price DECIMAL(10, 2),
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Updated_At TIMESTAMP
);

-- Creating Indication Table
CREATE TABLE Indication (
    Medicine_ID INT REFERENCES Medicine(Medicine_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    Disease_ID INT REFERENCES Disease(Disease_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    Indication_Date DATE,
    Effectiveness_Percent FLOAT,
    PRIMARY KEY (Medicine_ID, Disease_ID)
);

-- Creating Diseased Patient Table
CREATE TABLE Diseased_Patient (
    Patient_ID INT REFERENCES Patient(Patient_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    Disease_ID INT REFERENCES Disease(Disease_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    Severity_Value INT,
    Start_Date DATE,
    End_Date DATE,
    hospital_id INT REFERENCES Hospital(Hospital_ID) ON UPDATE CASCADE ON DELETE SET NULL,
    treatment_cost DECIMAL(12, 2),
    number_of_visits INT,
    treatment_compliance INT CHECK (treatment_compliance BETWEEN 0 AND 100),
    PRIMARY KEY (Patient_ID, Disease_ID)
);

-- Creating Race Disease Propensity Table
CREATE TABLE Race_Disease_Propensity (
    Race_Code CHAR(3) REFERENCES Race(Race_Code) ON UPDATE CASCADE ON DELETE CASCADE,
    Disease_ID INT REFERENCES Disease(Disease_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    Propensity_Value INT,
    PRIMARY KEY (Race_Code, Disease_ID)
);

-- Creating PatientHospital Associative Table
CREATE TABLE PatientHospital (
    Patient_ID INT REFERENCES Patient(Patient_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    Hospital_ID INT REFERENCES Hospital(Hospital_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    Admission_Date DATE,
    Discharge_Date DATE,
    Reason VARCHAR(255),
    PRIMARY KEY (Patient_ID, Hospital_ID, Admission_Date)
);