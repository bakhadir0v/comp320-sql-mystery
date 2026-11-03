SELECT person.id
FROM person
JOIN drivers_license ON person.license_id = drivers_license.id
WHERE plate_number LIKE '%H42W%';