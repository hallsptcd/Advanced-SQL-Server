SELECT p1.name as "Parent Name", MIN(p2.age) AS "Age of Youngest"
FROM people as p1 LEFT JOIN people as p2 ON p1.id = p2.motherId OR p1.id = p2.fatherId
WHERE p2.age IS NOT NULL
GROUP BY p1.id, p1.name;