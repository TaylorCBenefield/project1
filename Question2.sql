CREATE VIEW internalClicks AS
SELECT previous, SUM(linkCount) AS links FROM clickstream 
WHERE type = 'link'
GROUP BY previous;

CREATE VIEW viewCount AS 
SELECT title, SUM(total) as total FROM pageviews 
WHERE dom = 'en' AND total >= 10
GROUP BY title;

SELECT previous, internalClicks.links/viewCount.total AS clicks FROM internalClicks 
INNER JOIN viewCount ON internalClicks.previous = viewCount.title
ORDER BY clicks DESC;
