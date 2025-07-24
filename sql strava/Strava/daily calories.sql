SELECT * FROM strava.daily_calories;

DELETE FROM daily_calories
WHERE (Id, ActivityDay) NOT IN (
    SELECT * FROM (
        SELECT MIN(Id), MIN(ActivityDay)
        FROM daily_calories
        GROUP BY Id, ActivityDay
    ) AS temp
);

DELETE FROM daily_calories
WHERE Calories IS NULL OR ActivityDay IS NULL;

SELECT AVG(Calories) AS avg_calories FROM daily_calories;

SELECT Id, SUM(Calories) AS total_calories
FROM daily_calories
GROUP BY Id
ORDER BY total_calories DESC
LIMIT 10;

SELECT ActivityDay, SUM(Calories) AS daily_total
FROM daily_calories
GROUP BY ActivityDay
ORDER BY ActivityDay;