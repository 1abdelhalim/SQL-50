SELECT 
    query_name,
    round(avg(rating / position), 2) AS quality,
    round( sum(case when rating < 3 then 1 else 0 end) * 100 / count(*),2) poor_query_percentage
FROM 
    Queries
where query_name is not null 
GROUP BY 
    query_name;
