SELECT 
event_name,
    (SELECT value.string_value 
     FROM UNNEST(event_params)
     WHERE key = 'item_name') AS item_name 
FROM `your_project.dataset.events_*` 
WHERE event_name = 'view_item'