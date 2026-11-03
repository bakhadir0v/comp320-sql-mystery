SELECT person.name
FROM person
JOIN drivers_license ON person.license_id = drivers_license.id
WHERE plate_number LIKE '%H42W%' AND person.id IN (
    SELECT person_id
    FROM get_fit_now_member
    JOIN get_fit_now_check_in ON get_fit_now_member.id = get_fit_now_check_in.membership_id
    WHERE membership_status LIKE 'gold' AND id LIKE '48Z%' AND check_in_date = 20180109
);