-- 181 Employees Earning More Than Their Managers
SELECT
    Name AS Employee
FROM
    (
        SELECT
            e.Name,
            e.Salary,
            m.Salary AS ManagerSalary
        FROM
            Employee AS e
            JOIN Employee AS m ON e.ManagerId = m.Id
    ) as result
WHERE
    Salary > ManagerSalary