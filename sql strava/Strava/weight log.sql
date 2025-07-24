SELECT * FROM weight_log;

SELECT *
FROM weight_log
WHERE WeightKg IS NULL OR BMI IS NULL OR Id IS NULL;

SELECT COUNT(DISTINCT Id) AS unique_users
FROM weight_log;

SELECT 
  ROUND(AVG(WeightKg), 2) AS avg_weight,
  ROUND(AVG(BMI), 2) AS avg_bmi
FROM weight_log;

SELECT Date, WeightKg
FROM weight_log
WHERE Id = 'unique_user_id'  -- ek real ID yaha lagao
ORDER BY Date;



