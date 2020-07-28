-- 185 Department Top Three Salaries
SELECT
    d.Name AS Department,
    e.Name AS Employee,
    Salary
FROM
    Department AS d
    JOIN (
        SELECT
            Name,
            Salary,
            DepartmentId,
            DENSE_RANK() OVER (
                PARTITION BY DepartmentId
                ORDER BY
                    Salary DESC
            ) AS TopSalary
        FROM
            Employee
    ) AS e ON e.DepartmentId = d.Id
WHERE
    e.TopSalary < 4