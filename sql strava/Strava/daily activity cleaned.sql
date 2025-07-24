SELECT * FROM strava.`daily activity cleaned`;

DELETE FROM `daily activity cleaned`
WHERE (Id, ActivityDate) NOT IN (
    SELECT MIN(Id), ActivityDate
    FROM `daily activity cleaned`
    GROUP BY Id, ActivityDate
);

DELETE FROM `daily activity cleaned`
WHERE TotalSteps IS NULL OR Calories IS NULL;


SELECT AVG(TotalSteps) AS avg_steps FROM `daily activity cleaned`;

SELECT Id, SUM(TotalSteps) AS total_steps 
FROM `daily activity cleaned`
GROUP BY Id
ORDER BY total_steps DESC
LIMIT 1;

SELECT AVG(TotalSteps) AS avg_steps 
FROM `daily activity cleaned`;

SELECT Id, SUM(TotalSteps) AS total_steps
FROM `daily activity cleaned`
GROUP BY Id
ORDER BY total_steps DESC
LIMIT 1;