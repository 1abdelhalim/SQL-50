# Write your MySQL query statement below
Select 'Low Salary' as category , count(a1.account_id) as accounts_count
From Accounts a1 
Where a1.income < 20000 
Union All
Select 'Average Salary' as category  , count(a2.account_id) as accounts_count 
From Accounts a2 
Where a2.income Between 20000 and 50000 
Union All
Select 'High Salary' as category , count(a3.account_id) as accounts_count
From Accounts a3 
Where a3.income > 50000 