SELECT id
FROM person
WHERE (address_street_name = 'Franklin Ave' AND name LIKE 'Annabel%')
   OR id = (
       SELECT id
       FROM person
       WHERE address_street_name = 'Northwestern Dr'
       ORDER BY address_number DESC
       LIMIT 1
   );