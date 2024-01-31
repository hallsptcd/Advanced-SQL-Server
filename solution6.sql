WITH DepartmentAverages AS (SELECT d.id AS departmentId, COALESCE(SUM(e.salary)/COUNT(e.id), 0) AS departmentAvgSalary FROM departments_sal d
LEFT JOIN employees_sal e ON d.id = e.departmentId
GROUP BY d.id),
CompanyAverage AS (SELECT COALESCE(SUM(e.salary)/COUNT(e.id), 0) AS companyAvgSalary FROM employees_sal e)
SELECT d.id AS departmentId, da.departmentAvgSalary AS departmentAvgSalary,
  CASE
    WHEN da.departmentAvgSalary > ca.companyAvgSalary THEN 'Above'
    WHEN da.departmentAvgSalary < ca.companyAvgSalary THEN 'Below'
    ELSE 'Equal'
  END AS status
FROM departments_sal d
LEFT JOIN DepartmentAverages da ON d.id = da.departmentId CROSS JOIN CompanyAverage ca;