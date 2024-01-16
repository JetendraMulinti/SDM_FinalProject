--- CREATE SCHEMA IF NOT EXISTS dw_schema;

DROP TABLE IF EXISTS dw_schema.location;
DROP TABLE IF EXISTS dw_schema.race;
DROP TABLE IF EXISTS dw_schema.disease_type;
DROP TABLE IF EXISTS dw_schema.hospital;
DROP TABLE IF EXISTS dw_schema.Patient;
DROP TABLE IF EXISTS dw_schema.disease;
DROP TABLE IF EXISTS dw_schema.diseased_patient;


-- DW Table: Location
CREATE TABLE dw_schema.location (
    location_id INT PRIMARY KEY,
    city_name VARCHAR(100),
    state_province_name VARCHAR(100),
    country_name VARCHAR(100),
    developing_flag CHAR(1),
    wealth_rank_number INT
);

-- DW Table: Race
CREATE TABLE dw_schema.race (
    race_code CHAR(3) PRIMARY KEY,
    race_description VARCHAR(255)
);

-- DW Table: Disease_Type
CREATE TABLE dw_schema.disease_type (
    disease_type_code CHAR(5) PRIMARY KEY,
    disease_type_description VARCHAR(255),
    exclusions_other_note_text VARCHAR(255)
);

-- DW Table: Hospital
CREATE TABLE dw_schema.hospital (
    hospital_id INT PRIMARY KEY,
    hospital_name VARCHAR(255) NOT NULL,
    location_id INT,
    hospital_type VARCHAR(50),
    capacity INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
);

-- DW Table: Patient
CREATE TABLE dw_schema.Patient (
    Patient_id INT PRIMARY KEY,
    last_name VARCHAR(100),
    first_name VARCHAR(100),
    gender CHAR(1),
    primary_location_id INT,
    race_cd CHAR(3),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
);

-- DW Table: Disease
CREATE TABLE dw_schema.disease (
    disease_id INT PRIMARY KEY,
    disease_name VARCHAR(255) NOT NULL,
    intensity_level_qty INT CHECK (Intensity_Level_Qty BETWEEN 1 AND 10),
    disease_type_cd CHAR(5),
    source_disease_cd INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
);

-- DW Table: Diseased_Patient (Fact Table)
CREATE TABLE dw_schema.diseased_patient (
    Patient_id INT,
    disease_id INT,
	location_id INT,
	Disease_Type_Code CHAR(5),
    hospital_id INT,
	race_code CHAR(3),
	propensity_value INT,
    severity_value INT,
    start_date DATE,
    end_date DATE,
	treatment_cost DECIMAL(12, 2),
	number_of_visits INT,
	treatment_compliance INT CHECK (treatment_compliance BETWEEN 0 AND 100),
    PRIMARY KEY (Patient_id, disease_id, start_date)
);
