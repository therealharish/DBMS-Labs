1. Find the details of room allocated in hospital with General room without AC or NON-AC:

```

SELECT * FROM rooms WHERE room_type = 'General' AND ac = 'NO' OR ac = 'NON-AC';

```

2. Find the names of Doctors-on-call whose fee is above Rs. 1000:

```

SELECT name FROM doctors WHERE on_call = 'YES' AND fee > 1000;

```

3. Find the details of top 5 Highest paid Doctors:

```

SELECT * FROM doctors ORDER BY salary DESC LIMIT 5;

```

4. Find details of doctors whose salary is greater than 75000 and less than 100000:

```

SELECT * FROM doctors WHERE salary > 75000 AND salary < 100000;

```

5. Find the list of patients admitted in hospital between 1st june 2016 to 3rd june 2016:

```

SELECT * FROM patients WHERE admission_date BETWEEN '2016-06-01' AND '2016-06-03';

```

6. Find the Second maximum salary of Doctor in orthopaedic department:

```

SELECT salary FROM doctors WHERE department = 'Orthopaedic' ORDER BY salary DESC LIMIT 1, 1;

```

7. Find the list of rooms vacant having facility of Private room with AC:

```

SELECT * FROM rooms WHERE room_type = 'Private' AND ac = 'YES' AND availability = 'VACANT';

```

8. Find the count of patients who are female and are not diagnosed to have surgery:

```

SELECT COUNT(*) FROM patients WHERE gender = 'Female' AND surgery = 'NO';

```

9. Find the count of ENT patients in the Hospital for the year 2016:

```

SELECT COUNT(*) FROM patients WHERE department = 'ENT' AND admission_date BETWEEN '2016-01-01' AND '2016-12-31';

```

10. Find the total count of regular Doctors in the hospital who are in cardiac, ENT and Orthopaedic department:

```

SELECT COUNT(*) FROM doctors WHERE type = 'Regular' AND (department = 'Cardiac' OR department = 'ENT' OR department = 'Orthopaedic');

```

11. Sort salary of doctors department-wise:

```

SELECT * FROM doctors ORDER BY department, salary;

```