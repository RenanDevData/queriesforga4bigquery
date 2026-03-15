SELECT 
user_pseudo_id, 
device.category AS device_type 
FROM `your_project.dataset.events_*` 
WHERE device.category = 'mobile' 
GROUP BY user_pseudo_id, device_type