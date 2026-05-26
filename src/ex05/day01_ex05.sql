SELECT
    person.id as person_id,
    person.name as person_name,
    age,
    gender,
    address,
    pizzeria.id as pizzeria_id,
    pizzeria.name as pizzeria_name,
    rating
FROM person
CROSS JOIN pizzeria;