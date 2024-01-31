SELECT c.name, MIN(r.ranking) AS "Best Ranking 2015", COUNT(*) AS "Number of Students Ranked 1 to 3" FROM colleges c INNER JOIN students s ON c.id = s.collegeId INNER JOIN rankings r ON s.id = r.studentId WHERE r.year = 2015 AND r.ranking BETWEEN 1 AND 3
GROUP BY c.name
HAVING COUNT(*) > 0;