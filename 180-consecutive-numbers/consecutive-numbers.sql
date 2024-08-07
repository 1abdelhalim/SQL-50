# Write your MySQL query statement below
Select distinct l1.num as ConsecutiveNums
From Logs l1  
Join Logs l2 
On l1.id = l2.id -1  
Join Logs l3 
On l2.id = l3.id -1  
Where l1.num = l2.num and l2.num = l3.num 