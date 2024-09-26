WITH q1 AS (
  SELECT 
      id,
      recordDate,
      temperature,
      LAG(temperature) OVER (ORDER BY recordDate) AS previous_day_temperature,
      LAG(recordDate) OVER (ORDER BY recordDate) AS previous_Date
  FROM Weather
)
SELECT id
FROM q1
WHERE temperature > previous_day_temperature
AND DATEDIFF(recordDate, previous_Date) = 1;



