SELECT t.action_date, p.name
FROM (
    SELECT order_date AS action_date, person_id
    FROM person_order

    INTERSECT

    SELECT visit_date AS action_date, person_id
    FROM person_visits
) AS t
JOIN person p ON t.person_id = p.id
ORDER BY action_date ASC, p.name DESC;