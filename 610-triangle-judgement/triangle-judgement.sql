# Write your MySQL query statement below
Select x, y, z, 
Case 
When  x >= y + z Then 'No'
When  y >= x + z Then 'No'
When  z >= y + x Then 'No'
Else 'Yes'
End as triangle
From Triangle