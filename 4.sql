SELECT person_id
FROM get_fit_now_member
JOIN get_fit_now_check_in ON get_fit_now_member.id = get_fit_now_check_in.membership_id
WHERE membership_status LIKE 'gold' AND id LIKE '48Z%' AND check_in_date = 20180109
ORDER BY check_in_time;