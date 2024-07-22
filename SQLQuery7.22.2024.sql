select * from healthcare_dataset;
1.Calculate the average billing amount:

SELECT AVG([Billing_Amount]) AS average_billing_amount 
FROM healthcare_dataset;

2.Count the number of patients by gender:

SELECT Gender, COUNT(*) AS patient_count 
FROM healthcare_dataset 
GROUP BY Gender;

3.List patients admitted in 2022:

SELECT Name, [Date_of_Admission], [Medical_Condition], [Billing_Amount] 
FROM healthcare_dataset 
WHERE YEAR([Date_of_Admission]) = 2022;

4.Sum of billing amounts by medical condition:

SELECT [Medical_Condition], SUM([Billing_Amount]) AS total_billing 
FROM healthcare_dataset 
GROUP BY [Medical_Condition];

5.Average age of patients by blood type:

SELECT [Blood_Type], AVG(Age) AS average_age 
FROM healthcare_dataset 
GROUP BY [Blood_Type];

6.Patients discharged within a week of admission:

SELECT Name, [Date_of_Admission], [Discharge_Date] 
FROM healthcare_dataset 
WHERE DATEDIFF(day, [Date_of_Admission], [Discharge_Date]) <= 7;

7.Count of patients by insurance provider:

SELECT [Insurance_Provider], COUNT(*) AS patient_count 
FROM healthcare_dataset 
GROUP BY [Insurance_Provider];

8.List of female patients treated by 'Kevin Wells':

SELECT Name, Age, [Medical_Condition], [Billing_Amount] 
FROM healthcare_dataset 
WHERE Gender = 'Female' AND Doctor = 'Kevin Wells';

9.Top 5 highest billing amounts:

SELECT TOP 5 Name, [Medical_Condition], [Billing_Amount] 
FROM healthcare_dataset 
ORDER BY [Billing_Amount] DESC;

10.Average billing amount by admission type:

SELECT [Admission_Type], AVG([Billing_Amount]) AS average_billing 
FROM healthcare_dataset 
GROUP BY [Admission_Type];







