SELECT * FROM sleep_day;

SELECT * FROM sleep_day
WHERE Id IS NULL OR SleepDay IS NULL OR TotalMinutesAsleep IS NULL OR TotalTimeInBed IS NULL;

SELECT Id, SUM(TotalMinutesAsleep) AS total_minutes_asleep
FROM sleep_day
GROUP BY Id
ORDER BY total_minutes_asleep DESC;

SELECT AVG(TotalMinutesAsleep) AS avg_sleep_minutes,
       AVG(TotalTimeInBed) AS avg_time_in_bed
FROM sleep_day;

SELECT Id,
       ROUND(SUM(TotalMinutesAsleep) * 100.0 / SUM(TotalTimeInBed), 2) AS sleep_efficiency
FROM sleep_day
GROUP BY Id
ORDER BY sleep_efficiency DESC;

SELECT SleepDay, TotalMinutesAsleep, TotalTimeInBed
FROM sleep_day
WHERE Id = 1503960366
ORDER BY SleepDay;