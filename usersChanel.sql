SELECT 
user_pseudo_id, 
traffic_source.source, 
traffic_source.medium 
FROM `your_project.dataset.events_*` 
WHERE event_name = 'session_start'