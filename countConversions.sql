SELECT 
COUNT(*) AS conversions 
FROM `your_project.dataset.events_*` 
WHERE event_name = 'purchase'