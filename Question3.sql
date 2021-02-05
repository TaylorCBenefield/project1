CREATE VIEW hotelStart AS
SELECT curr, SUM(linkCount) as linkCount FROM clickstream 
WHERE previous = 'Hotel_California'
GROUP BY curr;

SELECT * FROM hotelStart
ORDER BY linkCount DESC;
