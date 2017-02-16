-- `tracks_no_id.sql`: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT
t.Name as 'Song',
al.Title as 'Album',
m.Name as 'Media Type',
g.Name as 'Genre'
FROM Track t 
INNER JOIN Album al 
ON t.AlbumId = al.AlbumId
INNER JOIN MediaType m 
ON t.MediaTypeId = m.MediaTypeId 
INNER JOIN Genre g 
ON t.GenreId = g.GenreId