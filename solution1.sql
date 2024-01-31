INSERT INTO departmentReport (departmentName, employeeCount)
SELECT d.name, COUNT(e.id) AS employeeCount FROM departments d LEFT JOIN employees e on d.id = e.departmentID
GROUP BY d.name;