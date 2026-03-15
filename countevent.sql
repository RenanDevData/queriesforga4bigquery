SELECT
event_name, 
COUNT(*) AS event_count 
FROM `your_project.dataset.events_*` 
WHERE _TABLE_SUFFIX BETWEEN '20240601' AND '20240630' 
GROUP BY event_name ORDER BY event_count DESC