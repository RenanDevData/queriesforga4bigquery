SELECT 
  (SELECT value.string_value 
   FROM UNNEST(event_params) 
    WHERE key = 'page_location') AS page, 
COUNT(*) AS count
FROM `your_project.dataset.events_*`
WHERE event_name = 'scroll' 
GROUP BY page
ORDER BY count DESC