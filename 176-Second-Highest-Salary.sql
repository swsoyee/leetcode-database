-- 176 Second Highest Salary
/*
 Method 1
 */
SELECT  MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary < ( 
SELECT  MAX(Salary)
FROM Employee)

/*
 Method 2, a better solution
*/
SELECT  IFNULL( (
SELECT  distinct (salary)
FROM employee
ORDER BY salary desc
LIMIT 1 offset 1), null) AS SecondHighestSalary
