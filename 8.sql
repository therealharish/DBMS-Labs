1.

```


SELECT name, id
FROM doctors
WHERE type = 'regular'
ORDER BY date_of_joining DESC;

```

2. 

```

SELECT name, id
FROM doctors
WHERE area_of_specialization = 'particular area of specialization'
AND can_be_called = 'Yes';

```

3. 

```

SELECT name, id
FROM doctors
ORDER BY department, salary;

```

4. 

```

SELECT name, id
FROM doctors
WHERE type = 'regular'
AND year(date_of_joining) = 2010;

```

5. 

```

SELECT patient_name, patient_id
FROM patients
WHERE treated_by = 'Dr. I';

```

6. 

```

SELECT patient_name, patient_id
FROM patients
WHERE diagnosed_with = 'ENT Problem';

```

7. 

```

SELECT patient_name, patient_id
FROM patients
WHERE gender = 'male'
AND diagnosed_with IN ('Ortho Problem', 'Neuro Problem', 'ENT Problem');

```

8. 

```

SELECT name, id
FROM doctors
WHERE type = 'regular'
ORDER BY salary ASC
LIMIT 1;

SELECT name, id
FROM doctors
WHERE type = 'regular'
ORDER BY salary DESC
LIMIT 1;

```

9. 

```

SELECT DISTINCT diagnosed_with
FROM patients
ORDER BY diagnosed_with;

```

10. 

```

SELECT COUNT(*)
FROM patients
WHERE diagnosed_with = 'Ortho Problem'
AND year(diagnosis_date) = 2016;

```

11. 

```

SELECT patient_name, patient_id
FROM patients
WHERE operation_type = 'Minor'
AND treated_by = 'Dr. I';

```

12. 

```

SELECT name, id
FROM doctors
WHERE id NOT IN (SELECT called_up_by FROM patients);

```

13. 

```

SELECT SUM(amount)
FROM patient_doctor_consultation
WHERE doctor_id = (SELECT id FROM doctors WHERE name = 'Dr. MH');

```

14. 

```

SELECT patient_name, patient_id
FROM patients
WHERE operation_type = 'Major'
AND operation_theatre = 'OT 2';

```

15. 

```

UPDATE doctors
SET salary = salary * 1.2
WHERE salary < 70000;

```