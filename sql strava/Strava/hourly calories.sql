SELECT * FROM hourly_calories;

SELECT Id, ActivityHour, COUNT(*) as count
FROM hourlycalories_split
GROUP BY Id, ActivityHour
HAVING count > 1;

DELETE FROM hourly_calories
WHERE Calories IS NULL OR ActivityHour IS NULL;

SELECT Id, AVG(Calories) AS avg_hourly_calories
FROM hourly_calories
GROUP BY Id
ORDER BY avg_hourly_calories DESC
LIMIT 10;

SELECT Id, AVG(Calories) AS avg_hourly_calories
FROM hourly_calories
GROUP BY Id
ORDER BY avg_hourly_calories DESC
LIMIT 10;

SELECT Id, SUM(Calories) AS total_hourly_calories
FROM hourly_calories
GROUP BY Id
ORDER BY total_hourly_calories DESC
LIMIT 10;