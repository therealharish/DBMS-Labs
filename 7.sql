1. Find Doctor ID with department name of those doctors who are called by hospital:

```

SELECT id, department FROM doctors WHERE on_call = 'YES';

```

2. Find the name, doctor id and its concerned department of all the doctors:

```

SELECT name, id, department FROM doctors;

```

3. Find Patient’s Id and Name who has been discharged on 05th June 2016:

```

SELECT id, name FROM patients WHERE discharge_date = '2016-06-05';

```

4. List of all the patient details with room number who is admitted to the hospital for treatment:

```

SELECT * FROM patients WHERE room_number IS NOT NULL;

```

5. Find id and name of patient who visit hospital and undergoing for ‘Regular Treatment’:

```

SELECT id, name FROM patients WHERE treatment = 'Regular';

```

6. Give the distinct department name of doctors who are not handling any patients:

```

SELECT DISTINCT department FROM doctors WHERE id NOT IN (SELECT doctor_id FROM patients);

```

7. Give the details of doctors (Doctor id, doctor name) who operated any patient or have done surgery:

```

SELECT id, name FROM doctors WHERE id IN (SELECT doctor_id FROM surgery);

```

8. Find the details of patient who is referred for operation:

```

SELECT * FROM patients WHERE referral_for_surgery = 'YES';

```

9. Give the details of patient with concerned department referred:

```

SELECT * FROM patients INNER JOIN departments ON patients.department_id = departments.id WHERE referral_for_surgery = 'YES';

```

10. Give the patient id and name that is discharged after payment of amount greater than Rs. 80000:

```

SELECT id, name FROM patients WHERE payment > 80000 AND discharge_date IS NOT NULL;

```

11. Details of patient being treated by which doctor of which department:

```

SELECT patients.name, patients.doctor_id, departments.name FROM patients INNER JOIN departments ON patients.department_id = departments.id;

```

12. Find the patient name with treatment prescribed to the regular patients:

```

SELECT name, treatment FROM patients WHERE treatment = 'Regular';

```

13. Find the details of highest paid Regular doctor:

```

SELECT * FROM doctors WHERE type = 'Regular' ORDER BY salary DESC LIMIT 1;

```

14. Give the details of operated patient with concerned doctor:

```

SELECT patients.name, doctors.name FROM patients INNER JOIN doctors ON patients.doctor_id = doctors.id WHERE patients.id IN (SELECT patient_id FROM surgery);

```

15. Find the details of treatment offered to patient under Cardiac department:

```

SELECT treatment FROM patients INNER JOIN departments ON patients.department_id = departments.id WHERE departments.name = 'Cardiac';

```

16. Find detail of all the patients who have either been admitted or referred for operation:

```

SELECT * FROM patients WHERE admission_date IS NOT NULL OR referral_for_surgery = 'YES';

```

17. Find detail of the patients with the date of operation and by the concerned doctor:

```

SELECT patients.name, surgery.operation_date, doctors.name FROM patients INNER JOIN surgery ON patients.id = surgery.patient_id INNER JOIN doctors ON surgery.doctor_id = doctors.id;

```

18. Find the details of room occupied by patient having diagnosed as ‘Neuro Problem’:

```

SELECT rooms.* FROM rooms INNER JOIN patients ON rooms.id = patients.room_number WHERE patients.diagnosis = 'Neuro Problem';

```