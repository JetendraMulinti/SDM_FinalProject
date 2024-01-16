
DROP TABLE IF EXISTS MedicinePrice_error_log;
DROP TRIGGER IF EXISTS trigger_validate_gender ON Patient;
DROP TRIGGER IF EXISTS trigger_check_price ON Medicine;

------------------- Creating Triggers
-- Trigger function to validate gender
CREATE OR REPLACE FUNCTION validate_patient_gender()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.Gender NOT IN ('M', 'F', 'Other') THEN
        RAISE EXCEPTION 'Invalid gender value. Allowed values are ''M'', ''F'', ''Other''.';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to invoke the function before insert or update
CREATE TRIGGER trigger_validate_gender
BEFORE INSERT OR UPDATE 
ON Patient
FOR EACH ROW
EXECUTE FUNCTION validate_patient_gender();


--------- Medicine Price Errorlog


CREATE OR REPLACE FUNCTION check_medicine_price()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.price < 0 THEN
        RAISE EXCEPTION 'Price cant be -ve';
	END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;



CREATE TRIGGER trigger_check_price
BEFORE INSERT OR UPDATE 
ON Medicine
FOR EACH ROW
EXECUTE FUNCTION check_medicine_price();

-------------- Testing 
INSERT INTO Patient(Patient_id, last_name, first_name, gender, primary_location_id, race_cd,created_at,updated_at) VALUES
('100', 'Chavez', 'Ryan', 'Q', 8, 'WHI', '2022-09-12', '2023-01-08');


INSERT INTO Medicine 
(Medicine_ID, Standard_Industry_Number, Name, Company, Price, Active_Ingredient_Name, Updated_At) VALUES 
(100, 'MED74187', 'Prednis', 'Med', -1, 'Prednisone', '2023-08-21');


select * from MedicinePrice_error_log;

