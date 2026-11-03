SELECT person.name
FROM drivers_license
JOIN person ON drivers_license.id = person.license_id
JOIN facebook_event_checkin ON person.id = facebook_event_checkin.person_id
WHERE hair_color LIKE 'red' AND gender LIKE 'female' AND car_make LIKE 'Tesla' AND car_model LIKE 'Model S'
AND person.id IN (SELECT person_id
FROM facebook_event_checkin
WHERE date BETWEEN 20171201 AND 20171231 AND event_name LIKE 'SQL Symphony Concert'
GROUP BY person_id
HAVING COUNT(*) = 3)
GROUP BY person.id;