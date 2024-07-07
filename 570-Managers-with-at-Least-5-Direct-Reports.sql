SELECT e.name
FROM Employee AS e 
INNER JOIN Employee AS e2
ON e.id=e2.managerId 
GROUP BY e2.managerId 
HAVING COUNT(e2.managerId) >= 5