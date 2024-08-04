# Write your MySQL query statement below
Select sell_date, count(Distinct product) as num_sold, GROUP_CONCAT(Distinct product Order by product) as products

From Activities
Group by 1 
Order by 1 