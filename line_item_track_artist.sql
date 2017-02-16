-- `line_item_track_artist.sql`: Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT
t.Name as 'Song',
a.Name as 'Artist'
FROM Track t
INNER JOIN InvoiceLine il
ON t.TrackId = il.TrackId
INNER JOIN Album al
ON t.AlbumId = al.AlbumId
INNER JOIN Artist a
ON al.ArtistId = a.ArtistId 

-- Find out if they want each artist name once or each song name once Can add 
-- GROUP BY t.Name
-- ORDER BY il.InvoiceLineId