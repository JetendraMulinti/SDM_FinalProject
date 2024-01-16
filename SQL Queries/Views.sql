
DROP VIEW IF EXISTS view_sourcedisease_summary CASCADE;

CREATE OR REPLACE VIEW view_sourcedisease_summary AS
SELECT b.disease_name AS SourceDisease,
       COUNT(a.disease_id) AS disease_count,
       string_agg(a.disease_name, ', ') AS diseases_list
FROM disease a
JOIN disease b ON a.source_disease_cd = b.disease_id
GROUP BY b.disease_name
ORDER BY COUNT(a.disease_id) DESC;



select * from view_sourcedisease_summary;
