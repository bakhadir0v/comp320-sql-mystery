SELECT description
FROM crime_scene_report
WHERE date = 20180115 AND city LIKE 'SQL City' AND type LIKE 'murder';