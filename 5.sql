# Lab 5

1. Calculate the total no. of Patients in Cardiac department:

```
SELECT COUNT(*) AS total_patients
FROM patients
WHERE department = 'Cardiac'
```

2. Calculate the average salary of all the regular Doctors:

```

SELECT AVG(salary) AS avg_salary
FROM doctors
WHERE type = 'Regular';

```

3. Find the Details of Doctors whose id starts with DC:

```
SELECT *
FROM doctors
WHERE id LIKE 'DC%';

```

4. Find details of all doctors who are NOT MBBS:

```
SELECT *
FROM doctors
WHERE degree != 'MBBS';

```

5. Find the details of patient with age greater than 45:

```
SELECT *
FROM patients
WHERE age > 45;

```

6. Find the details of Doctor-on-call with maximum fee:

```
SELECT *
FROM doctors
WHERE type = 'On-call'
ORDER BY fee DESC
LIMIT 1;

```

7. Find the details of patients being treated for neuro problem:

```
SELECT *
FROM patients
WHERE problem = 'Neuro';

```

8. Find the department where number of patient is more than 3:

```

SELECT department, COUNT(*) AS num_patients
FROM patients
GROUP BY department
HAVING COUNT(*) > 3;

```

9. Find the total number of patients visiting for general surgery:

```
SELECT COUNT(*) AS total_patients
FROM patients
WHERE department = 'General Surgery';

```

10. Calculate the average payment done by patients admitted to the hospital:

```
SELECT AVG(payment) AS avg_payment
FROM patients;

```

11. Display the details of patient in decreasing order as per their check-up date and in increasing order of age:

````
SELECT *
FROM patients
ORDER BY checkup_date DESC, age ASC;
```