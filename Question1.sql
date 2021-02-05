SELECT title, SUM(total) as visits FROM pageviews 
WHERE dom = 'en' OR dom = 'en.m'
GROUP BY title
ORDER BY visits DESC;
