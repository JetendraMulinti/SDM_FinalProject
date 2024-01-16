-- Insert data into Location
INSERT INTO dw_schema.location (location_id,city_name, state_province_name, country_name, developing_flag, wealth_rank_number)
SELECT location_id,city_name, state_province_name, country_name, developing_flag, wealth_rank_number
FROM public.location;




-- Insert data into Race
INSERT INTO dw_schema.race (race_code, race_description)
SELECT race_code, race_description
FROM public.race;

-- Insert data into Disease_Type
INSERT INTO dw_schema.disease_type (disease_type_code, disease_type_description, exclusions_other_note_text)
SELECT disease_type_code, disease_type_description, exclusions_other_note_text
FROM public.disease_type;


-- Insert data into Hospital
INSERT INTO dw_schema.hospital (hospital_id,hospital_name, location_id, hospital_type, capacity, created_at, updated_at)
SELECT hospital_id,hospital_name, location_id, hospital_type, capacity, created_at, updated_at
FROM public.hospital;


-- Insert data into Patient
INSERT INTO dw_schema.Patient (Patient_id,last_name, first_name, gender, primary_location_id, race_cd, created_at, updated_at)
SELECT Patient_id,last_name, first_name, gender, primary_location_id, race_cd, created_at, updated_at
FROM public.Patient;


-- Insert data into Disease
INSERT INTO dw_schema.disease (disease_id, disease_name, intensity_level_qty, disease_type_cd, source_disease_cd, created_at, updated_at)
SELECT disease_id, disease_name, intensity_level_qty, disease_type_cd, source_disease_cd, created_at, updated_at
FROM public.disease;


-- Insert data into Diseased_Patient
INSERT INTO dw_schema.diseased_patient (Patient_id, disease_id,location_id,Disease_Type_Code,hospital_id,
										race_code,propensity_value,
										severity_value, start_date, end_date,treatment_cost,number_of_visits,
										treatment_compliance)
SELECT 
	dp.Patient_id, dp.disease_id,p.primary_location_id,d.disease_type_cd, dp.hospital_id,
	rdp.race_code, 
	rdp.propensity_value,
	dp.severity_value, ph.admission_date, ph.discharge_date,-- dp.start_date, dp.end_date,
	dp.treatment_cost, dp.number_of_visits, dp.treatment_compliance
FROM public.diseased_patient dp 
inner join disease d on d.disease_id = dp.disease_id
inner join Patient p on p.Patient_id = dp.Patient_id
inner join race_disease_propensity rdp on rdp.disease_id = dp.disease_id
inner join Patienthospital ph on ph.Patient_id = dp.Patient_id;



