-- `line_item_track.sql`: Provide a query that includes the purchased track name with each invoice line item.

SELECT
t.Name as 'Song' #Add distinct to get each song name once
FROM Track t
INNER JOIN InvoiceLine il 
ON t.TrackId = il.TrackId