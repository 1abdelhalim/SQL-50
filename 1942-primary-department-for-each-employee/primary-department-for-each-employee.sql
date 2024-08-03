Select employee_id, department_id
From Employee 
Group By 1 
Having count(employee_id) = 1 

Union 

Select employee_id, department_id
From Employee 
Where primary_flag = 'Y' 