
-- 1.Find the number of matches played per year
SELECT season, COUNT(*) AS matches_played
FROM matches
GROUP BY season
ORDER BY season;

--2.Find the number of matches won by each team
SELECT winner, COUNT(*) AS matches_won
FROM matches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY matches_won DESC;

--3. Find the extra runs given by each team
select bowling_team, sum(extra_runs) as extra_runs_conceded
from deliveries
join matches
on match_id = id
where season = 2015
group by bowling_team
order by extra_runs_conceded desc;

--4.find the most economical bowler of the year 2015
SELECT bowler, 
       SUM(total_runs) / (COUNT(ball) / 6.0) AS economy_rate
FROM deliveries 
JOIN matches ON match_id = id
WHERE season = 2015
GROUP BY bowler
ORDER BY economy_rate ASC
LIMIT 10;




