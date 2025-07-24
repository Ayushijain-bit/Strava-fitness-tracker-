SELECT * FROM minute_sleep;

SELECT * FROM minute_sleep
WHERE Id IS NULL OR date IS NULL OR value IS NULL OR logId IS NULL;

DELETE FROM minute_sleep
WHERE (Id, date, value, logId) IN (
    SELECT Id, date, value, logId
    FROM (
        SELECT Id, date, value, logId,
               ROW_NUMBER() OVER (PARTITION BY Id, date, value, logId ORDER BY logId) AS row_num
        FROM minute_sleep
    ) t
    WHERE t.row_num > 1
);

SELECT Id, COUNT(*) AS total_sleep_minutes
FROM minute_sleep
GROUP BY Id
ORDER BY total_sleep_minutes DESC;

SELECT Id, AVG(value) AS avg_sleep_value
FROM minute_sleep
GROUP BY Id
ORDER BY avg_sleep_value DESC;

SELECT date, SUM(value) AS total_sleep_value
FROM minute_sleep
WHERE Id = 1503960366  -- example ID
GROUP BY date
ORDER BY date;