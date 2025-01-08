select* from health ;
-- q1 how many types of diagnosis are there in data? sabse jyada
SELECT diagnosis, COUNT(*) 
FROM health GROUP BY diagnosis order by Diagnosis
 limit 1;
 
 -- q2 Count the number of patients by age group:

SELECT 
  age_group,
  COUNT(*) AS patient_count
FROM (
  SELECT 
    CASE 
      WHEN age <= 29 THEN 'G1'
      WHEN age BETWEEN 30 AND 45 THEN 'G2'
      ELSE 'G3'
    END AS age_group
  FROM health
) AS subquery
GROUP BY age_group order by age_group;

-- q3 count patient with each mental condition

SELECT Diagnosis, count(*) as total from health 
group by Diagnosis;


