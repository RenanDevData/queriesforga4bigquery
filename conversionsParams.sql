SELECT 
COUNT(*) AS purchases,
SUM(CAST((SELECT value.int_value 
          FROM UNNEST(event_params) 
          WHERE key = 'value') AS FLOAT64)) AS total_value 
FROM `your_project.dataset.events_*`
WHERE event_name = 'purchase'