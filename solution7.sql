SELECT sup.id, COUNT(sub.id) AS "Number of Employees" FROM employees_hier sup JOIN employees_hier sub ON sub.managerId = sup.id
GROUP BY sup.id;