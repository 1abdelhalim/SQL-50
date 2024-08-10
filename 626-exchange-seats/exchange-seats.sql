# Write your MySQL query statement below
Select id, 
       Case When id % 2 = 0 Then Lag(student) Over(Order by id)
       ELse Coalesce(Lead(student) Over(Order by id), student)
       End as student

From Seat  