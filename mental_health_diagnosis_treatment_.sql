select* from health ;
-- Question 1: Count how many diagnosis has recorded in mental health data.
SELECT diagnosis, COUNT(*) 
FROM health GROUP BY diagnosis order by Diagnosis;
 
 -- Question 2: Count the number of patient by specific age group ?

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

-- Question 3: Display the type of medication and Therapy is used for each disorder?

SELECT Diagnosis , Medication, `Therapy Type` from health ;

-- Question 4: Show the data of those females whose having depressive disorder with the least physical activity?

SELECT *
FROM health
WHERE gender = 'Female'
AND diagnosis = 'Major Depressive Disorder';

-- q5 a

