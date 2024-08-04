# Write your MySQL query statement below
Select employee_id 
From Employees 
Where salary < 30000 and manager_id not in (Select employee_id 
                         From Employees)

Order by 1 