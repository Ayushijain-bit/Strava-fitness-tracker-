Create database strava;
use strava;

CREATE TABLE daily_activity (
  Id BIGINT,
  ActivityDate VARCHAR(20),
  TotalSteps INT,
  TotalDistance FLOAT,
  TrackerDistance FLOAT,
  LoggedActivitiesDistance FLOAT,
  VeryActiveDistance FLOAT,
  ModeratelyActiveDistance FLOAT,
  LightActiveDistance FLOAT,
  SedentaryActiveDistance FLOAT,
  VeryActiveMinutes INT,
  FairlyActiveMinutes INT,
  LightlyActiveMinutes INT,
  SedentaryMinutes INT,
  Calories INT
);


CREATE TABLE daily_calories (
  Id BIGINT,
  ActivityDay VARCHAR(20),
  Calories INT
);

CREATE TABLE hourly_calories (
  Id BIGINT,
  ActivityHour VARCHAR(20),
  Calories INT
);

CREATE TABLE sleep_day (
  Id BIGINT,
  SleepDay VARCHAR(20),
  TotalSleepRecords INT,
  TotalMinutesAsleep INT,
  TotalTimeInBed INT
);


CREATE TABLE weight_log (
  Id BIGINT,
  Date VARCHAR(20),
  WeightKg FLOAT,
  WeightPounds FLOAT,
  Fat INT,
  BMI FLOAT,
  IsManualReport VARCHAR(10),
  LogId BIGINT
);

CREATE TABLE minute_sleep (
  Id BIGINT,
  date VARCHAR(20),
  value INT,
  logId BIGINT
);



