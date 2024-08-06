WITH players_first_log AS 
(
    SELECT player_id, MIN(event_date) AS first_login 
    FROM Activity
    GROUP BY player_id
),
next_day_logins AS 
(
    SELECT DISTINCT A.player_id
    FROM Activity A
    JOIN players_first_log P
    ON A.player_id = P.player_id
    WHERE DATEDIFF(A.event_date, P.first_login) = 1
)

SELECT ROUND(COUNT(next_day_logins.player_id) / COUNT(DISTINCT players_first_log.player_id), 2) AS fraction
FROM players_first_log
LEFT JOIN next_day_logins
ON players_first_log.player_id = next_day_logins.player_id;
