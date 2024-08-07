# Write your MySQL query statement below
With prod_first_year as 
(
    select product_id, min(year) as first_year
    from Sales 
    Group by 1 
)

select p.product_id, s.year as first_year, s.quantity, s.price
From Sales s 
Join prod_first_year p 
ON s.product_id = p.product_id
Where s.year = p.first_year