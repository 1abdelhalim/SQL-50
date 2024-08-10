WITH RankedSalaries AS (
    SELECT
        e.departmentId,
        e.name AS Employee,
        e.salary,
        DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) AS salary_rank
    FROM Employee e
)

SELECT
    d.name AS Department,
    rs.Employee,
    rs.salary AS Salary
FROM RankedSalaries rs
JOIN Department d ON rs.departmentId = d.id
WHERE rs.salary_rank <= 3

