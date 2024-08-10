-- Write your MySQL query statement below

with sum_daily as
    (
        select visited_on, sum(amount) as amount
        from Customer
        group by visited_on
    ),

cte as 
    (
        select c.visited_on, sum(d.amount) as amount, round(avg(d.amount), 2) as average_amount
        from sum_daily c 
        join sum_daily d on c.visited_on >= d.visited_on
        where d.visited_on >= date_sub(c.visited_on, interval 6 day) and d.visited_on <= c.visited_on and c.visited_on in 
            (select date_add(visited_on, interval 6 day) from Customer)
        group by c.visited_on
        order by c.visited_on
    )


select * from cte