-- 184 Department Highest Salary
SELECT
    d.Name AS Department,
    e.Name AS Employee,
    e.Salary
FROM
    Employee AS e
    JOIN Department AS d ON d.Id = e.DepartmentId
WHERE
    (e.DepartmentId, e.Salary) IN (
        SELECT
            DepartmentId,
            MAX(Salary) AS Salary
        FROM
            Employee
        GROUP BY
            DepartmentId
    )