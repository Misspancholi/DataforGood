SELECT * FROM health ;

-- Question 1: Count how many diagnosis has recorded in mental health data.

SELECT diagnosis, COUNT(*) 
FROM health GROUP BY diagnosis ORDER BY Diagnosis;
 
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
GROUP BY age_group ORDER BY age_group;

-- Question 3: Display the type of Medication and Therapy is used for each disorder?

SELECT Diagnosis , Medication, `Therapy Type` FROM health ;

-- Question 4: Show the data of those females whose having depressive disorder with the least physical activity?

SELECT *
FROM health
WHERE gender = 'Female'
AND diagnosis = 'Major Depressive Disorder';

-- Question 5: Show the details of recovered males from disorder?

SELECT *
FROM health
WHERE gender = 'male'
AND Outcome = 'improved';

-- Question 6: Show the count of MALE and FEMALE recovered?

SELECT Gender , COUNT(Gender) 
AS Total 
FROM health 
WHERE Outcome='improved' 
GROUP BY Gender;  

-- Question 7: Show what therapies taking more than 4 months ? (approx)

SELECT `therapy type`, `Treatment Duration (weeks)` 
FROM health
WHERE `Treatment Duration (weeks)` > 14;

-- Question 8: 
